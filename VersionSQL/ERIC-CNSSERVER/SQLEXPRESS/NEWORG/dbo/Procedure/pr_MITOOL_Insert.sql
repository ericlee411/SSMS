/****** Object:  Procedure [dbo].[pr_MITOOL_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MITOOL_Insert
	@toolId nvarchar (12),
	@descr nvarchar (30),
	@cycleMode smallint,
	@cycleUsed numeric (20, 6),
	@cycleMaint numeric (20, 6),
	@cycleExpr numeric (20, 6),
	@maintDueDate nvarchar (8),
	@exprDate nvarchar (8),
	@lstUseDate nvarchar (8),
	@recupDate nvarchar (8),
	@docPath nvarchar (260),
	@itemId nvarchar (24),
	@fldXml text,
	@status smallint,
	@TSCol rowversion output 
AS
INSERT dbo.MITOOL
(	[toolId],
	[descr],
	[cycleMode],
	[cycleUsed],
	[cycleMaint],
	[cycleExpr],
	[maintDueDate],
	[exprDate],
	[lstUseDate],
	[recupDate],
	[docPath],
	[itemId],
	[fldXml],
	[status]
)
VALUES
(
	@toolId,
	@descr,
	@cycleMode,
	@cycleUsed,
	@cycleMaint,
	@cycleExpr,
	@maintDueDate,
	@exprDate,
	@lstUseDate,
	@recupDate,
	@docPath,
	@itemId,
	@fldXml,
	@status
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MITOOL
	  WHERE [toolId] = @toolId
return @@rowcount

