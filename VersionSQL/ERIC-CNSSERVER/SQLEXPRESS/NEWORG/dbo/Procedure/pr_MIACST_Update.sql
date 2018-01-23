/****** Object:  Procedure [dbo].[pr_MIACST_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIACST_Update
	@addCostId nvarchar (8),
	@descr nvarchar (60),
	@amt numeric (20, 6),
	@lstMaintDt datetime,
	@inactive smallint,
	@suplCode nvarchar (12),
	@curCode nvarchar (3),
	@prorMeth smallint,
	@glAcct nvarchar (45),
	@addCostIdOrig nvarchar (8),
	@TSCol rowversion output
AS
UPDATE MIACST
SET 	[addCostId] = @addCostId,
	[descr] = @descr,
	[amt] = @amt,
	[lstMaintDt] = @lstMaintDt,
	[inactive] = @inactive,
	[suplCode] = @suplCode,
	[curCode] = @curCode,
	[prorMeth] = @prorMeth,
	[glAcct] = @glAcct
WHERE [addCostId] = @addCostIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIACST
	WHERE [addCostId] = @addCostId
return @@rowcount

