/****** Object:  Procedure [dbo].[pr_MINEEDH_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MINEEDH_Update
	@needNo int,
	@uniqItemLoc int,
	@needSource int,
	@needId nvarchar (15),
	@itemId nvarchar (24),
	@locId nvarchar (6),
	@itemType smallint,
	@qSup bit,
	@excess numeric (20, 6),
	@needNoOrig int,
	@uniqItemLocOrig int,
	@TSCol rowversion output
AS
UPDATE MINEEDH
SET 	[needNo] = @needNo,
	[uniqItemLoc] = @uniqItemLoc,
	[needSource] = @needSource,
	[needId] = @needId,
	[itemId] = @itemId,
	[locId] = @locId,
	[itemType] = @itemType,
	[qSup] = @qSup,
	[excess] = @excess
WHERE [needNo] = @needNoOrig
  AND [uniqItemLoc] = @uniqItemLocOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MINEEDH
	WHERE [needNo] = @needNo
	  AND [uniqItemLoc] = @uniqItemLoc
return @@rowcount

