/****** Object:  Procedure [dbo].[pr_MIJOBH_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIJOBH_Insert
	@jobId nvarchar (12),
	@jobName nvarchar (60),
	@class nvarchar (8),
	@segId nvarchar (15),
	@status smallint,
	@docPath nvarchar (260),
	@fldXml text,
	@TSCol rowversion output 
AS
INSERT dbo.MIJOBH
(	[jobId],
	[jobName],
	[class],
	[segId],
	[status],
	[docPath],
	[fldXml]
)
VALUES
(
	@jobId,
	@jobName,
	@class,
	@segId,
	@status,
	@docPath,
	@fldXml
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIJOBH
	  WHERE [jobId] = @jobId
return @@rowcount

