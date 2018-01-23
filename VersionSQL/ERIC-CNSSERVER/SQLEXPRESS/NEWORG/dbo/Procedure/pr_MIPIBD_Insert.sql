/****** Object:  Procedure [dbo].[pr_MIPIBD_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIPIBD_Insert
	@userId nvarchar (8),
	@batchId nvarchar (6),
	@bType smallint,
	@entry int,
	@lineNbr int,
	@itemId nvarchar (24),
	@locId nvarchar (6),
	@type smallint,
	@binId nvarchar (24),
	@dateISO nvarchar (8),
	@qty numeric (20, 6),
	@wip numeric (20, 6),
	@recQty numeric (20, 6),
	@recWip numeric (20, 6),
	@ticket nvarchar (30),
	@comment nvarchar (60),
	@status smallint,
	@errId nvarchar (8),
	@TSCol rowversion output 
AS
INSERT dbo.MIPIBD
(	[userId],
	[batchId],
	[bType],
	[entry],
	[lineNbr],
	[itemId],
	[locId],
	[type],
	[binId],
	[dateISO],
	[qty],
	[wip],
	[recQty],
	[recWip],
	[ticket],
	[comment],
	[status],
	[errId]
)
VALUES
(
	@userId,
	@batchId,
	@bType,
	@entry,
	@lineNbr,
	@itemId,
	@locId,
	@type,
	@binId,
	@dateISO,
	@qty,
	@wip,
	@recQty,
	@recWip,
	@ticket,
	@comment,
	@status,
	@errId
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIPIBD
	  WHERE [userId] = @userId
	   AND [batchId] = @batchId
	   AND [bType] = @bType
	   AND [entry] = @entry
return @@rowcount

