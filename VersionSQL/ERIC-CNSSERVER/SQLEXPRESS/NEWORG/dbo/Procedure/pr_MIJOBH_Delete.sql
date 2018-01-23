/****** Object:  Procedure [dbo].[pr_MIJOBH_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIJOBH_Delete
	@jobId nvarchar (12)
AS
DELETE dbo.MIJOBH
 WHERE [jobId] = @jobId
return @@rowcount 

