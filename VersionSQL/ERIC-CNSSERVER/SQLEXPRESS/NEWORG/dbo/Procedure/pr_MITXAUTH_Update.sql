/****** Object:  Procedure [dbo].[pr_MITXAUTH_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MITXAUTH_Update
	@auth nvarchar (12),
	@descr nvarchar (60),
	@srcCur nvarchar (3),
	@maxTax numeric (20, 6),
	@minTax numeric (20, 6),
	@txBase smallint,
	@includable bit,
	@liability nvarchar (45),
	@auditLvl smallint,
	@recoverable bit,
	@recovRate numeric (20, 6),
	@recovAcct nvarchar (45),
	@expSep bit,
	@expAcct nvarchar (45),
	@lstMaintDt datetime,
	@taxType smallint,
	@authOrig nvarchar (12),
	@TSCol rowversion output
AS
UPDATE MITXAUTH
SET 	[auth] = @auth,
	[descr] = @descr,
	[srcCur] = @srcCur,
	[maxTax] = @maxTax,
	[minTax] = @minTax,
	[txBase] = @txBase,
	[includable] = @includable,
	[liability] = @liability,
	[auditLvl] = @auditLvl,
	[recoverable] = @recoverable,
	[recovRate] = @recovRate,
	[recovAcct] = @recovAcct,
	[expSep] = @expSep,
	[expAcct] = @expAcct,
	[lstMaintDt] = @lstMaintDt,
	[taxType] = @taxType
WHERE [auth] = @authOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MITXAUTH
	WHERE [auth] = @auth
return @@rowcount

