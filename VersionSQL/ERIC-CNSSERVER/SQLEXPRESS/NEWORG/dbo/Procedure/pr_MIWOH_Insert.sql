/****** Object:  Procedure [dbo].[pr_MIWOH_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIWOH_Insert
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
	@TSCol rowversion output 
AS
INSERT dbo.MIWOH
(	[wohId],
	[lstMaintDt],
	[descr],
	[creator],
	[releaser],
	[releaseDate],
	[locId],
	[jobId],
	[status],
	[priority],
	[docPath],
	[oeOrdNo],
	[onHold],
	[fldXml]
)
VALUES
(
	@wohId,
	@lstMaintDt,
	@descr,
	@creator,
	@releaser,
	@releaseDate,
	@locId,
	@jobId,
	@status,
	@priority,
	@docPath,
	@oeOrdNo,
	@onHold,
	@fldXml
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIWOH
	  WHERE [wohId] = @wohId
return @@rowcount

