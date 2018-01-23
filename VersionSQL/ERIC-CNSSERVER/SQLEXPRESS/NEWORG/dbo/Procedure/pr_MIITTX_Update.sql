/****** Object:  Procedure [dbo].[pr_MIITTX_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIITTX_Update
	@itemId nvarchar (24),
	@auth nvarchar (12),
	@taxClass int,
	@taxIncl smallint,
	@altBase1 numeric (20, 6),
	@altBase2 numeric (20, 6),
	@itemIdOrig nvarchar (24),
	@authOrig nvarchar (12),
	@TSCol rowversion output
AS
UPDATE MIITTX
SET 	[itemId] = @itemId,
	[auth] = @auth,
	[taxClass] = @taxClass,
	[taxIncl] = @taxIncl,
	[altBase1] = @altBase1,
	[altBase2] = @altBase2
WHERE [itemId] = @itemIdOrig
  AND [auth] = @authOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIITTX
	WHERE [itemId] = @itemId
	  AND [auth] = @auth
return @@rowcount

