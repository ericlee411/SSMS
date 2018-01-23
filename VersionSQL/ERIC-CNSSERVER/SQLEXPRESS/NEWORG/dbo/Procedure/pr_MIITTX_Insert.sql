/****** Object:  Procedure [dbo].[pr_MIITTX_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIITTX_Insert
	@itemId nvarchar (24),
	@auth nvarchar (12),
	@taxClass int,
	@taxIncl smallint,
	@altBase1 numeric (20, 6),
	@altBase2 numeric (20, 6),
	@TSCol rowversion output 
AS
INSERT dbo.MIITTX
(	[itemId],
	[auth],
	[taxClass],
	[taxIncl],
	[altBase1],
	[altBase2]
)
VALUES
(
	@itemId,
	@auth,
	@taxClass,
	@taxIncl,
	@altBase1,
	@altBase2
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIITTX
	  WHERE [itemId] = @itemId
	   AND [auth] = @auth
return @@rowcount

