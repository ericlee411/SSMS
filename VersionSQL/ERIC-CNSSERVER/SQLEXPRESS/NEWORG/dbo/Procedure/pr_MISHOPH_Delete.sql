/****** Object:  Procedure [dbo].[pr_MISHOPH_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISHOPH_Delete
	@userId nvarchar (8),
	@batchId nvarchar (6)
AS
DELETE dbo.MISHOPH
 WHERE [userId] = @userId
   AND [batchId] = @batchId
return @@rowcount 

