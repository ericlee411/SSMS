/****** Object:  Procedure [dbo].[pr_MIACSTX_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIACSTX_Insert
	@addCostId nvarchar (8),
	@auth nvarchar (12),
	@curCode nvarchar (3),
	@taxClass smallint,
	@TSCol rowversion output 
AS
INSERT dbo.MIACSTX
(	[addCostId],
	[auth],
	[curCode],
	[taxClass]
)
VALUES
(
	@addCostId,
	@auth,
	@curCode,
	@taxClass
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIACSTX
	  WHERE [addCostId] = @addCostId
	   AND [auth] = @auth
return @@rowcount

