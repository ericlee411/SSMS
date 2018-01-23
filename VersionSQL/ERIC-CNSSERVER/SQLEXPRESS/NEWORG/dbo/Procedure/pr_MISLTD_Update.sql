/****** Object:  Procedure [dbo].[pr_MISLTD_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISLTD_Update
	@tranDate nvarchar (8),
	@userId nvarchar (8),
	@entry int,
	@detail int,
	@prntLotId nvarchar (40),
	@trnQty numeric (20, 6),
	@recQty numeric (20, 6),
	@itemId nvarchar (24),
	@prntItemId nvarchar (24),
	@tranDateOrig nvarchar (8),
	@userIdOrig nvarchar (8),
	@entryOrig int,
	@detailOrig int,
	@prntLotIdOrig nvarchar (40),
	@TSCol rowversion output
AS
UPDATE MISLTD
SET 	[tranDate] = @tranDate,
	[userId] = @userId,
	[entry] = @entry,
	[detail] = @detail,
	[prntLotId] = @prntLotId,
	[trnQty] = @trnQty,
	[recQty] = @recQty,
	[itemId] = @itemId,
	[prntItemId] = @prntItemId
WHERE [tranDate] = @tranDateOrig
  AND [userId] = @userIdOrig
  AND [entry] = @entryOrig
  AND [detail] = @detailOrig
  AND [prntLotId] = @prntLotIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MISLTD
	WHERE [tranDate] = @tranDate
	  AND [userId] = @userId
	  AND [entry] = @entry
	  AND [detail] = @detail
	  AND [prntLotId] = @prntLotId
return @@rowcount

