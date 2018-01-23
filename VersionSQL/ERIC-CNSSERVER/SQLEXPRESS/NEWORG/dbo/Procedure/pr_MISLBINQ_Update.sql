/****** Object:  Procedure [dbo].[pr_MISLBINQ_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISLBINQ_Update
	@locId nvarchar (6),
	@binId nvarchar (24),
	@lotId nvarchar (40),
	@itemId nvarchar (24),
	@qStk numeric (20, 6),
	@locIdOrig nvarchar (6),
	@binIdOrig nvarchar (24),
	@lotIdOrig nvarchar (40),
	@TSCol rowversion output
AS
UPDATE MISLBINQ
SET 	[locId] = @locId,
	[binId] = @binId,
	[lotId] = @lotId,
	[itemId] = @itemId,
	[qStk] = @qStk
WHERE [locId] = @locIdOrig
  AND [binId] = @binIdOrig
  AND [lotId] = @lotIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MISLBINQ
	WHERE [locId] = @locId
	  AND [binId] = @binId
	  AND [lotId] = @lotId
return @@rowcount

