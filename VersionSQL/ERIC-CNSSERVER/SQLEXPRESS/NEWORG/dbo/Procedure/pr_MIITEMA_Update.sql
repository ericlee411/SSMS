/****** Object:  Procedure [dbo].[pr_MIITEMA_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIITEMA_Update
	@itemId nvarchar (24),
	@uniquifier int,
	@lineNbr smallint,
	@altItemId nvarchar (24),
	@itemIdOrig nvarchar (24),
	@uniquifierOrig int,
	@TSCol rowversion output
AS
UPDATE MIITEMA
SET 	[itemId] = @itemId,
	[uniquifier] = @uniquifier,
	[lineNbr] = @lineNbr,
	[altItemId] = @altItemId
WHERE [itemId] = @itemIdOrig
  AND [uniquifier] = @uniquifierOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIITEMA
	WHERE [itemId] = @itemId
	  AND [uniquifier] = @uniquifier
return @@rowcount

