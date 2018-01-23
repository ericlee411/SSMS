/****** Object:  Procedure [dbo].[pr_MIITEMX_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIITEMX_Insert
	@itemId nvarchar (24),
	@notes nvarchar (2000),
	@docPath nvarchar (260),
	@picPath nvarchar (260),
	@TSCol rowversion output 
AS
INSERT dbo.MIITEMX
(	[itemId],
	[notes],
	[docPath],
	[picPath]
)
VALUES
(
	@itemId,
	@notes,
	@docPath,
	@picPath
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIITEMX
	  WHERE [itemId] = @itemId
return @@rowcount

