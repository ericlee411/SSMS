/****** Object:  Procedure [dbo].[pr_MITXAUTH_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MITXAUTH_Insert
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
	@TSCol rowversion output 
AS
INSERT dbo.MITXAUTH
(	[auth],
	[descr],
	[srcCur],
	[maxTax],
	[minTax],
	[txBase],
	[includable],
	[liability],
	[auditLvl],
	[recoverable],
	[recovRate],
	[recovAcct],
	[expSep],
	[expAcct],
	[lstMaintDt],
	[taxType]
)
VALUES
(
	@auth,
	@descr,
	@srcCur,
	@maxTax,
	@minTax,
	@txBase,
	@includable,
	@liability,
	@auditLvl,
	@recoverable,
	@recovRate,
	@recovAcct,
	@expSep,
	@expAcct,
	@lstMaintDt,
	@taxType
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MITXAUTH
	  WHERE [auth] = @auth
return @@rowcount

