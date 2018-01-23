/****** Object:  Procedure [dbo].[pr_MIJOBH_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIJOBH_Update
	@jobId nvarchar (12),
	@jobName nvarchar (60),
	@class nvarchar (8),
	@segId nvarchar (15),
	@status smallint,
	@docPath nvarchar (260),
	@fldXml text,
	@jobIdOrig nvarchar (12),
	@TSCol rowversion output
AS
UPDATE MIJOBH
SET 	[jobId] = @jobId,
	[jobName] = @jobName,
	[class] = @class,
	[segId] = @segId,
	[status] = @status,
	[docPath] = @docPath,
	[fldXml] = @fldXml
WHERE [jobId] = @jobIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIJOBH
	WHERE [jobId] = @jobId
return @@rowcount

