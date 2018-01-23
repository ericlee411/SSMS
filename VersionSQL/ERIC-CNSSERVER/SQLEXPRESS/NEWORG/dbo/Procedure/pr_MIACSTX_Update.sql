/****** Object:  Procedure [dbo].[pr_MIACSTX_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIACSTX_Update
	@addCostId nvarchar (8),
	@auth nvarchar (12),
	@curCode nvarchar (3),
	@taxClass smallint,
	@addCostIdOrig nvarchar (8),
	@authOrig nvarchar (12),
	@TSCol rowversion output
AS
UPDATE MIACSTX
SET 	[addCostId] = @addCostId,
	[auth] = @auth,
	[curCode] = @curCode,
	[taxClass] = @taxClass
WHERE [addCostId] = @addCostIdOrig
  AND [auth] = @authOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIACSTX
	WHERE [addCostId] = @addCostId
	  AND [auth] = @auth
return @@rowcount

