/****** Object:  Table [dbo].[MILOGH]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MILOGH](
	[tranDate] [nvarchar](8) NOT NULL,
	[userId] [nvarchar](8) NOT NULL,
	[entry] [int] NOT NULL,
	[type] [smallint] NOT NULL,
	[itemId] [nvarchar](24) NULL,
	[revId] [nvarchar](6) NULL,
	[comment] [nvarchar](255) NOT NULL,
	[qty] [numeric](20, 6) NOT NULL,
	[jobId] [nvarchar](12) NULL,
	[locId] [nvarchar](6) NULL,
	[binId] [nvarchar](24) NULL,
	[glFlag] [smallint] NOT NULL,
	[jrnlNo] [int] NOT NULL,
	[xvarItemId] [nvarchar](24) NULL,
	[xvarToLoc] [nvarchar](6) NULL,
	[xvarBinId] [nvarchar](24) NULL,
	[xvarOpCode] [nvarchar](24) NULL,
	[xvarSuplId] [nvarchar](12) NULL,
	[xvarPOId] [nvarchar](12) NULL,
	[xvarPORev] [smallint] NULL,
	[xvarWOId] [nvarchar](12) NULL,
	[xvarMOId] [nvarchar](15) NULL,
	[xvarDtl] [int] NULL,
	[xvarNoStk] [bit] NOT NULL,
	[xvarInitVal] [numeric](20, 6) NULL,
	[xvarFinalVal] [numeric](20, 6) NULL,
	[xvarSalesId] [nvarchar](256) NULL,
	[xvarSOId] [nvarchar](256) NULL,
	[xvarSOLn] [int] NOT NULL,
	[xvarBillId] [nvarchar](256) NULL,
	[xvarSalesLoc] [nvarchar](256) NULL,
	[tranDt]  AS (CONVERT([datetime],[tranDate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MILOGH_KEY_0] PRIMARY KEY CLUSTERED 
(
	[tranDate] ASC,
	[userId] ASC,
	[entry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IDX_MILOGH_1] ON [dbo].[MILOGH]
(
	[itemId] ASC,
	[revId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IDX_MILOGH_2] ON [dbo].[MILOGH]
(
	[xvarPOId] ASC,
	[xvarPORev] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IDX_MILOGH_3] ON [dbo].[MILOGH]
(
	[xvarMOId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[MILOGH] ADD  DEFAULT (' ') FOR [userId]
ALTER TABLE [dbo].[MILOGH] ADD  DEFAULT ((0)) FOR [entry]
ALTER TABLE [dbo].[MILOGH] ADD  DEFAULT ((0)) FOR [type]
ALTER TABLE [dbo].[MILOGH] ADD  DEFAULT (' ') FOR [comment]
ALTER TABLE [dbo].[MILOGH] ADD  DEFAULT ((0)) FOR [qty]
ALTER TABLE [dbo].[MILOGH] ADD  DEFAULT ((0)) FOR [glFlag]
ALTER TABLE [dbo].[MILOGH] ADD  DEFAULT ((0)) FOR [jrnlNo]
ALTER TABLE [dbo].[MILOGH] ADD  DEFAULT ((0)) FOR [xvarNoStk]
ALTER TABLE [dbo].[MILOGH] ADD  DEFAULT (' ') FOR [xvarSalesId]
ALTER TABLE [dbo].[MILOGH] ADD  DEFAULT ((0)) FOR [xvarSOLn]
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TRIGGER tr_Ultraflote_MILOGH_CreateBinForItemReceived
ON MILOGH
AFTER INSERT
AS
BEGIN

-- Reminder to update variable @custFld with the correct custom field no. in MIITEM that was assigned to tracking item in bins 

IF @@ROWCOUNT=0
RETURN
SET NOCOUNT ON;

DECLARE
@tranDate nvarchar(8)
,@userId nvarchar(8)
,@entry int
,@type smallint
,@itemId nvarchar(24)
,@qty numeric(20,6)
,@jobId nvarchar(12)
,@locId nvarchar(6)
,@pohId nvarchar(12)
,@podId int
,@minEntry int
,@maxEntry int
,@bin nvarchar(6)
,@binQty int
,@binMax int
,@count int = 1
,@seqNo int
,@price numeric(20,6)
,@invAcct nvarchar(45)
,@disAcct nvarchar(45)
,@costAcct nvarchar(45)
,@custFld nvarchar(2) = 1
,@qtyLog numeric(20,6) = 0
,@minId int
,@maxId int
,@lenId int
,@recLen numeric(20,6)
,@recQty numeric(20,6) 
,@currId int
,@current nvarchar

-- Determine No. of New Entries Posted into Master Log Header
SELECT
	@tranDate = tranDate
	,@userId = userId
	,@minEntry = MIN(entry)
	,@maxEntry = MAX(entry)
FROM inserted
GROUP BY tranDate, userId

-- Determine Account No. for Inventory Asset and Dispense/Return Control
SELECT
	@invAcct = acct1
	,@disAcct = acct14
	,@costAcct = acct7
FROM MIACCT
WHERE setId = ''

-- Loop Through New Entries Inserted into Master Log Header
WHILE (@minEntry <= @maxEntry)
	BEGIN

		SELECT
			@itemId = itemId
			,@qty = qty
			,@type = type
			,@jobId = jobId
			,@locId = locId
			,@pohId = xvarPOId
			,@podId = xvarDtl
		FROM inserted
		WHERE entry = @minEntry AND tranDate = @tranDate AND userId = @userId

		-- Only Process Items Received Against PO
		IF (@qty > 0 AND @type = 12)
			BEGIN

				-- Check Item Master if Received Item is Bin Tracked
				SELECT
					@bin = SUBSTRING(CAST(fldXml AS varchar(2000)), CHARINDEX('<field1>',fldXml,1)+8, CHARINDEX('</field1>',fldXml,1)-8-CHARINDEX('<field1>',fldXml,1))
				FROM MIITEM
				WHERE itemId = @itemId

				-- Create Bin and Move Inventory into Bin
				If @bin = 'True'
					BEGIN

						-- Lookup No. of Receipt for PO Detail
						SELECT 
							IDENTITY(int,1,1) AS ID
						INTO #TempLog
						FROM MILOGH AS A
						WHERE A.xvarPOId = @pohId AND A.xvarDtl = @podId AND A.type = 12

						SELECT
							@currId = MAX(ID)
						FROM #TempLog

						DROP TABLE #TempLog

						-- Lookup Cut Lengths and Quantities for Curent PO Receipt
						SELECT
							@current = SUBSTRING(CAST(A.fldXml AS VARCHAR(2000)),CHARINDEX('<field'+CAST(@currId AS nvarchar(2))+'>',A.fldXml,1)+8,CHARINDEX('</field'+CAST(@currId AS nvarchar(2))+'>',A.fldXml,1)-8-CHARINDEX('<field'+CAST(@currId AS nvarchar(2))+'>',A.fldXml,1))
							,@price = price
						FROM MIPOD AS A
						WHERE A.pohId = @pohId AND A.podId = @podId

						SELECT 
							IDENTITY(int,1,1) AS ID
							,B.value AS currRec
						INTO #TempCurrRec
						FROM MIPOD AS A
						CROSS APPLY STRING_SPLIT(REPLACE(REPLACE(REPLACE(@current,'@',','),'"',''),' ',''),',') AS B
						WHERE A.pohId = @pohId AND A.podId = @podId

						-- Determine Number of Lines in Temporary Table for Ordered Detail
						SELECT
							@minId = MIN(ID)
							,@maxId = MAX(ID)
						FROM #TempCurrRec

						-- Loop Through ID
						WHILE (@minId <= @maxId)
							BEGIN
		
								-- Odd Number Lines for Quantity, Even Number Lines for Cut Length
								SET @LenId = @minId + 1

								SELECT
									@recQty = CAST(currRec AS numeric(20,6))
								FROM #TempCurrRec
								WHERE ID = @minId

								SELECT
									@recLen = CAST(currRec AS numeric(20,6)) 
								FROM #TempCurrRec
								WHERE ID = @LenId

								-- Keep Count of Aggregate Cut Length
								SET @qtyLog = @qtyLog + (@recQty * @recLen)

								SET @minId = @minId + 2

							END
							
							-- Rollback Transaction If Aggregate Cut Length Doesn't Match Received Quantity	
							IF CAST(@qtyLog AS numeric(20,6)) <> CAST(@qty AS numeric(20,6))
								BEGIN
			
									UPDATE MIPOHX SET 
										hdrTxt1 = 'Under/over-received Item.'
									WHERE pohId = @pohId

									ROLLBACK TRANSACTION

								END		

							---- Create New Bins and Add Received Quantity to Bins by Cut Length
							--SELECT
							--	@minId = MIN(ID)
							--	,@maxId = MAX(ID)
							--FROM #TempCurrRec

							---- Loop Through ID
							--WHILE (@minId <= @maxId)
							--	BEGIN

							--		-- Odd Number Lines for Quantity, Even Number Lines for Cut Length
							--		SET @LenId = @minId + 1

							--		SELECT
							--			@binQty = CAST(currRec AS numeric(20,0))
							--		FROM #TempCurrRec
							--		WHERE ID = @minId

							--		SELECT
							--			@recLen = CAST(currRec AS numeric(20,2))
							--		FROM #TempCurrRec
							--		WHERE ID = @LenId
					
							--		-- Lookup the Largest Bin No. in the Item's Received Location
							--		SET @binMax = CAST((SELECT ISNULL (
							--			(
							--				SELECT MAX(CAST(binId AS numeric(20,0)))
							--				FROM MIBINQ
							--				WHERE locId = @locId),0)) AS int
							--			)

							--		-- Lookup Data from Item Receipt Cost Table
							--		SET @seqNo = CAST((SELECT ISNULL (
							--			(
							--				SELECT MAX(CAST(seqNo AS numeric(20,0)))
							--				FROM MIICST
							--				WHERE itemId = @itemId AND transDate = @tranDate),0)) AS int
							--			)

							--		-- Create New Bin No. AND Move Received Item into Bin
							--		WHILE (@count <= @binQty)
							--			BEGIN

							--				-- Create New Location Bin 
							--				INSERT INTO MIBINQ (locId, binId, createDate, status, itemId)
							--				VALUES (@locId, @binMax+@count, @tranDate, 0, @itemId)

							--				-- Add New Entry into Master Log Header to Transfer Item From Received Location to New Location Bin
							--				INSERT INTO MILOGH (tranDate, userId, entry, type, itemId, qty, locId, xvarToLoc, xvarBinId)
							--				VALUES (@tranDate, @userId, @maxEntry+@count, 24, @itemId, @recLen, @locId, @locId, @binMax+@count)

							--				-- Add New Entries into Master Log Detail to Dispense Item From Received Location and Return Item to Location Bin
							--				INSERT INTO MILOGD (tranDate, userId, entry, detail, type, itemId, locId, recDate, qty, crAcctId, crAmnt, drAcctId, drAmnt)
							--				VALUES 
							--				(@tranDate, @userId, @maxEntry+@count, 1, 1, @itemId, @locId, @tranDate, @recLen, @invAcct, @recLen*@price, @disAcct, @recLen*@price),
							--				(@tranDate, @userId, @maxEntry+@count, 2, 4, @itemId, @locId, @tranDate, @recLen, @disAcct, @recLen*@price, @invAcct, @recLen*@price)

							--				-- Add New Item Receipt Cost Record to Transfer Item From Received Location to New Location Bin
							--				INSERT INTO MIICST (itemId, transDate, seqNo, locId, type, tranType, poRev, poDtl, qRecd, cost)
							--				VALUES (@itemId, @tranDate, @seqNo+@count, @locId, 0, 3, 0, -1, @recLen, @price)

							--				-- Update New Location Bin with Quantity Transferred in
							--				UPDATE MIBINQ SET lstUseDate = @tranDate, qStk = @recLen
							--				WHERE locId = @locId AND binId = @binMax+@count

							--				SET @count = @count + 1

							--			END

							--			SET @minId = @minId + 2

							--	END
							--	DROP TABLE #TempCurrRec
					END	
		END
		
		SET @count = 1
		SET @minEntry = @minEntry + 1
	END
END

ALTER TABLE [dbo].[MILOGH] ENABLE TRIGGER [tr_Ultraflote_MILOGH_CreateBinForItemReceived]
