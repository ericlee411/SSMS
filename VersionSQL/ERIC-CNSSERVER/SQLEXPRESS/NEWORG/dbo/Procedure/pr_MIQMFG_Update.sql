/****** Object:  Procedure [dbo].[pr_MIQMFG_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIQMFG_Update
	@itemId nvarchar (24),
	@mfgId nvarchar (12),
	@mfgName nvarchar (60),
	@mfgProdCode nvarchar (24),
	@itemIdOrig nvarchar (24),
	@mfgIdOrig nvarchar (12),
	@TSCol rowversion output
AS
UPDATE MIQMFG
SET 	[itemId] = @itemId,
	[mfgId] = @mfgId,
	[mfgName] = @mfgName,
	[mfgProdCode] = @mfgProdCode
WHERE [itemId] = @itemIdOrig
  AND [mfgId] = @mfgIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIQMFG
	WHERE [itemId] = @itemId
	  AND [mfgId] = @mfgId
return @@rowcount

