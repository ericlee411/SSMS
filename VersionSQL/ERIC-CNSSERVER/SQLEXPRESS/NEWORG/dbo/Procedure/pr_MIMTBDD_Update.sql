/****** Object:  Procedure [dbo].[pr_MIMTBDD_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIMTBDD_Update
	@userId nvarchar (8),
	@batchId nvarchar (6),
	@entry int,
	@detail int,
	@itemId nvarchar (24),
	@lotId nvarchar (40),
	@lineNbr smallint,
	@recQty numeric (20, 6),
	@userIdOrig nvarchar (8),
	@batchIdOrig nvarchar (6),
	@entryOrig int,
	@detailOrig int,
	@TSCol rowversion output
AS
UPDATE MIMTBDD
SET 	[userId] = @userId,
	[batchId] = @batchId,
	[entry] = @entry,
	[detail] = @detail,
	[itemId] = @itemId,
	[lotId] = @lotId,
	[lineNbr] = @lineNbr,
	[recQty] = @recQty
WHERE [userId] = @userIdOrig
  AND [batchId] = @batchIdOrig
  AND [entry] = @entryOrig
  AND [detail] = @detailOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIMTBDD
	WHERE [userId] = @userId
	  AND [batchId] = @batchId
	  AND [entry] = @entry
	  AND [detail] = @detail
return @@rowcount

