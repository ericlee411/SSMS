/****** Object:  Procedure [dbo].[pr_MIBOMH_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIBOMH_Insert
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
	@TSCol rowversion output 
AS
INSERT dbo.MIBOMH
(	[bomItem],
	[bomRev],
	[rollup],
	[mult],
	[yield],
	[autoBuild],
	[lstMainDt],
	[descr],
	[author],
	[ecoNum],
	[revDate],
	[effStartDate],
	[effEndDate],
	[ovride],
	[docPath],
	[assyLead],
	[revCmnt],
	[ecoDocPath],
	[qPerLead],
	[fldXml]
)
VALUES
(
	@bomItem,
	@bomRev,
	@rollup,
	@mult,
	@yield,
	@autoBuild,
	@lstMainDt,
	@descr,
	@author,
	@ecoNum,
	@revDate,
	@effStartDate,
	@effEndDate,
	@ovride,
	@docPath,
	@assyLead,
	@revCmnt,
	@ecoDocPath,
	@qPerLead,
	@fldXml
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIBOMH
	  WHERE [bomItem] = @bomItem
	   AND [bomRev] = @bomRev
return @@rowcount

