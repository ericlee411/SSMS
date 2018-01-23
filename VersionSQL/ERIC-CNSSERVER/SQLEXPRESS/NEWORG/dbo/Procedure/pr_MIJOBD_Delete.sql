/****** Object:  Procedure [dbo].[pr_MIJOBD_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIJOBD_Delete
	@jobId nvarchar (12),
	@jobItem nvarchar (24),
	@part nvarchar (24),
	@locId nvarchar (6),
	@type smallint
AS
DELETE dbo.MIJOBD
 WHERE [jobId] = @jobId
   AND [jobItem] = @jobItem
   AND [part] = @part
   AND [locId] = @locId
   AND [type] = @type
return @@rowcount 

