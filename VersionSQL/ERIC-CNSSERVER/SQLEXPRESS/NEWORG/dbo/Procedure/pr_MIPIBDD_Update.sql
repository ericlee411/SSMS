/****** Object:  Procedure [dbo].[pr_MIPIBDD_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIPIBDD_Update
	@userId nvarchar (8),
	@batchId nvarchar (6),
	@bType smallint,
	@entry int,
	@detail int,
	@itemId nvarchar (24),
	@locId nvarchar (6),
	@binId nvarchar (24),
	@lotId nvarchar (40),
	@qty numeric (20, 6),
	@wip numeric (20, 6),
	@userIdOrig nvarchar (8),
	@batchIdOrig nvarchar (6),
	@bTypeOrig smallint,
	@entryOrig int,
	@detailOrig int,
	@TSCol rowversion output
AS
UPDATE MIPIBDD
SET 	[userId] = @userId,
	[batchId] = @batchId,
	[bType] = @bType,
	[entry] = @entry,
	[detail] = @detail,
	[itemId] = @itemId,
	[locId] = @locId,
	[binId] = @binId,
	[lotId] = @lotId,
	[qty] = @qty,
	[wip] = @wip
WHERE [userId] = @userIdOrig
  AND [batchId] = @batchIdOrig
  AND [bType] = @bTypeOrig
  AND [entry] = @entryOrig
  AND [detail] = @detailOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIPIBDD
	WHERE [userId] = @userId
	  AND [batchId] = @batchId
	  AND [bType] = @bType
	  AND [entry] = @entry
	  AND [detail] = @detail
return @@rowcount

