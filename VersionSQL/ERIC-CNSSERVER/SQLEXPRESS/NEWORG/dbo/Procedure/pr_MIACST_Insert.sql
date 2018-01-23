/****** Object:  Procedure [dbo].[pr_MIACST_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIACST_Insert
	@addCostId nvarchar (8),
	@descr nvarchar (60),
	@amt numeric (20, 6),
	@lstMaintDt datetime,
	@inactive smallint,
	@suplCode nvarchar (12),
	@curCode nvarchar (3),
	@prorMeth smallint,
	@glAcct nvarchar (45),
	@TSCol rowversion output 
AS
INSERT dbo.MIACST
(	[addCostId],
	[descr],
	[amt],
	[lstMaintDt],
	[inactive],
	[suplCode],
	[curCode],
	[prorMeth],
	[glAcct]
)
VALUES
(
	@addCostId,
	@descr,
	@amt,
	@lstMaintDt,
	@inactive,
	@suplCode,
	@curCode,
	@prorMeth,
	@glAcct
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIACST
	  WHERE [addCostId] = @addCostId
return @@rowcount

