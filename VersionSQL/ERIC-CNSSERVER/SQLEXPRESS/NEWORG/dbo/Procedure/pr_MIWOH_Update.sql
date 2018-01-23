/****** Object:  Procedure [dbo].[pr_MIWOH_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIWOH_Update
	@wohId nvarchar (12),
	@lstMaintDt datetime,
	@descr nvarchar (60),
	@creator nvarchar (8),
	@releaser nvarchar (8),
	@releaseDate nvarchar (8),
	@locId nvarchar (6),
	@jobId nvarchar (12),
	@status smallint,
	@priority smallint,
	@docPath nvarchar (260),
	@oeOrdNo nvarchar (256),
	@onHold bit,
	@fldXml text,
	@wohIdOrig nvarchar (12),
	@TSCol rowversion output
AS
UPDATE MIWOH
SET 	[wohId] = @wohId,
	[lstMaintDt] = @lstMaintDt,
	[descr] = @descr,
	[creator] = @creator,
	[releaser] = @releaser,
	[releaseDate] = @releaseDate,
	[locId] = @locId,
	[jobId] = @jobId,
	[status] = @status,
	[priority] = @priority,
	[docPath] = @docPath,
	[oeOrdNo] = @oeOrdNo,
	[onHold] = @onHold,
	[fldXml] = @fldXml
WHERE [wohId] = @wohIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIWOH
	WHERE [wohId] = @wohId
return @@rowcount

