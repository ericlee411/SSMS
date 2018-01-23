/****** Object:  Procedure [dbo].[pr_MITOOL_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MITOOL_Update
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
	@toolIdOrig nvarchar (12),
	@TSCol rowversion output
AS
UPDATE MITOOL
SET 	[toolId] = @toolId,
	[descr] = @descr,
	[cycleMode] = @cycleMode,
	[cycleUsed] = @cycleUsed,
	[cycleMaint] = @cycleMaint,
	[cycleExpr] = @cycleExpr,
	[maintDueDate] = @maintDueDate,
	[exprDate] = @exprDate,
	[lstUseDate] = @lstUseDate,
	[recupDate] = @recupDate,
	[docPath] = @docPath,
	[itemId] = @itemId,
	[fldXml] = @fldXml,
	[status] = @status
WHERE [toolId] = @toolIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MITOOL
	WHERE [toolId] = @toolId
return @@rowcount

