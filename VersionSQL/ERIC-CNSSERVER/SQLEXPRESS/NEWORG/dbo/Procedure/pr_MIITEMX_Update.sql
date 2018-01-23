/****** Object:  Procedure [dbo].[pr_MIITEMX_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIITEMX_Update
	@itemId nvarchar (24),
	@notes nvarchar (2000),
	@docPath nvarchar (260),
	@picPath nvarchar (260),
	@itemIdOrig nvarchar (24),
	@TSCol rowversion output
AS
UPDATE MIITEMX
SET 	[itemId] = @itemId,
	[notes] = @notes,
	[docPath] = @docPath,
	[picPath] = @picPath
WHERE [itemId] = @itemIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIITEMX
	WHERE [itemId] = @itemId
return @@rowcount

