/****** Object:  Procedure [dbo].[pr_MIQMFG_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIQMFG_Insert
	@itemId nvarchar (24),
	@mfgId nvarchar (12),
	@mfgName nvarchar (60),
	@mfgProdCode nvarchar (24),
	@TSCol rowversion output 
AS
INSERT dbo.MIQMFG
(	[itemId],
	[mfgId],
	[mfgName],
	[mfgProdCode]
)
VALUES
(
	@itemId,
	@mfgId,
	@mfgName,
	@mfgProdCode
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIQMFG
	  WHERE [itemId] = @itemId
	   AND [mfgId] = @mfgId
return @@rowcount

