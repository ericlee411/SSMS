/****** Object:  Procedure [dbo].[pr_MISLHIST_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISLHIST_Update
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
	@itemIdOrig nvarchar (24),
	@lotIdOrig nvarchar (40),
	@tranDateOrig nvarchar (8),
	@userIdOrig nvarchar (8),
	@entryOrig int,
	@detailOrig int,
	@uniqueIdOrig int,
	@TSCol rowversion output
AS
UPDATE MISLHIST
SET 	[itemId] = @itemId,
	[lotId] = @lotId,
	[tranDate] = @tranDate,
	[userId] = @userId,
	[entry] = @entry,
	[detail] = @detail,
	[uniqueId] = @uniqueId,
	[prntItemId] = @prntItemId,
	[prntLotId] = @prntLotId,
	[type] = @type,
	[qty] = @qty,
	[locId] = @locId,
	[binId] = @binId,
	[jobId] = @jobId,
	[xvarToLoc] = @xvarToLoc,
	[xvarBinId] = @xvarBinId,
	[xvarPOId] = @xvarPOId,
	[xvarPORev] = @xvarPORev,
	[xvarWOId] = @xvarWOId,
	[xvarMOId] = @xvarMOId,
	[xvarSuplId] = @xvarSuplId,
	[xvarSalesId] = @xvarSalesId,
	[xvarSalesQty] = @xvarSalesQty,
	[xvarSOId] = @xvarSOId,
	[xvarSOLn] = @xvarSOLn,
	[xvarBillId] = @xvarBillId,
	[assignedBy] = @assignedBy,
	[assignedDate] = @assignedDate
WHERE [itemId] = @itemIdOrig
  AND [lotId] = @lotIdOrig
  AND [tranDate] = @tranDateOrig
  AND [userId] = @userIdOrig
  AND [entry] = @entryOrig
  AND [detail] = @detailOrig
  AND [uniqueId] = @uniqueIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MISLHIST
	WHERE [itemId] = @itemId
	  AND [lotId] = @lotId
	  AND [tranDate] = @tranDate
	  AND [userId] = @userId
	  AND [entry] = @entry
	  AND [detail] = @detail
	  AND [uniqueId] = @uniqueId
return @@rowcount

