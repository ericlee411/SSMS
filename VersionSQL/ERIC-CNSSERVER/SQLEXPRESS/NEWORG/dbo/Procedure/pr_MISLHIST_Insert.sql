/****** Object:  Procedure [dbo].[pr_MISLHIST_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MISLHIST_Insert
	@itemId nvarchar (24),
	@lotId nvarchar (40),
	@tranDate nvarchar (8),
	@userId nvarchar (8),
	@entry int,
	@detail int,
	@uniqueId int,
	@prntItemId nvarchar (24),
	@prntLotId nvarchar (40),
	@type smallint,
	@qty numeric (20, 6),
	@locId nvarchar (6),
	@binId nvarchar (24),
	@jobId nvarchar (12),
	@xvarToLoc nvarchar (6),
	@xvarBinId nvarchar (24),
	@xvarPOId nvarchar (12),
	@xvarPORev smallint,
	@xvarWOId nvarchar (12),
	@xvarMOId nvarchar (15),
	@xvarSuplId nvarchar (12),
	@xvarSalesId nvarchar (256),
	@xvarSalesQty numeric (20, 6),
	@xvarSOId nvarchar (256),
	@xvarSOLn int,
	@xvarBillId nvarchar (256),
	@assignedBy nvarchar (8),
	@assignedDate nvarchar (8),
	@TSCol rowversion output 
AS
INSERT dbo.MISLHIST
(	[itemId],
	[lotId],
	[tranDate],
	[userId],
	[entry],
	[detail],
	[uniqueId],
	[prntItemId],
	[prntLotId],
	[type],
	[qty],
	[locId],
	[binId],
	[jobId],
	[xvarToLoc],
	[xvarBinId],
	[xvarPOId],
	[xvarPORev],
	[xvarWOId],
	[xvarMOId],
	[xvarSuplId],
	[xvarSalesId],
	[xvarSalesQty],
	[xvarSOId],
	[xvarSOLn],
	[xvarBillId],
	[assignedBy],
	[assignedDate]
)
VALUES
(
	@itemId,
	@lotId,
	@tranDate,
	@userId,
	@entry,
	@detail,
	@uniqueId,
	@prntItemId,
	@prntLotId,
	@type,
	@qty,
	@locId,
	@binId,
	@jobId,
	@xvarToLoc,
	@xvarBinId,
	@xvarPOId,
	@xvarPORev,
	@xvarWOId,
	@xvarMOId,
	@xvarSuplId,
	@xvarSalesId,
	@xvarSalesQty,
	@xvarSOId,
	@xvarSOLn,
	@xvarBillId,
	@assignedBy,
	@assignedDate
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MISLHIST
	  WHERE [itemId] = @itemId
	   AND [lotId] = @lotId
	   AND [tranDate] = @tranDate
	   AND [userId] = @userId
	   AND [entry] = @entry
	   AND [detail] = @detail
	   AND [uniqueId] = @uniqueId
return @@rowcount

