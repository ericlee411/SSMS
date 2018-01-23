/****** Object:  Procedure [dbo].[pr_MIBOMH_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIBOMH_Update
	@bomItem nvarchar (24),
	@bomRev nvarchar (6),
	@rollup bit,
	@mult numeric (20, 6),
	@yield numeric (20, 6),
	@autoBuild smallint,
	@lstMainDt datetime,
	@descr nvarchar (2000),
	@author nvarchar (30),
	@ecoNum nvarchar (12),
	@revDate nvarchar (8),
	@effStartDate nvarchar (8),
	@effEndDate nvarchar (8),
	@ovride bit,
	@docPath nvarchar (260),
	@assyLead smallint,
	@revCmnt nvarchar (256),
	@ecoDocPath nvarchar (260),
	@qPerLead numeric (20, 6),
	@fldXml text,
	@bomItemOrig nvarchar (24),
	@bomRevOrig nvarchar (6),
	@TSCol rowversion output
AS
UPDATE MIBOMH
SET 	[bomItem] = @bomItem,
	[bomRev] = @bomRev,
	[rollup] = @rollup,
	[mult] = @mult,
	[yield] = @yield,
	[autoBuild] = @autoBuild,
	[lstMainDt] = @lstMainDt,
	[descr] = @descr,
	[author] = @author,
	[ecoNum] = @ecoNum,
	[revDate] = @revDate,
	[effStartDate] = @effStartDate,
	[effEndDate] = @effEndDate,
	[ovride] = @ovride,
	[docPath] = @docPath,
	[assyLead] = @assyLead,
	[revCmnt] = @revCmnt,
	[ecoDocPath] = @ecoDocPath,
	[qPerLead] = @qPerLead,
	[fldXml] = @fldXml
WHERE [bomItem] = @bomItemOrig
  AND [bomRev] = @bomRevOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIBOMH
	WHERE [bomItem] = @bomItem
	  AND [bomRev] = @bomRev
return @@rowcount

