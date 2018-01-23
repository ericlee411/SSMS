/****** Object:  Procedure [dbo].[pr_MINBTH_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MINBTH_Delete
	@userId nvarchar (8),
	@batchId nvarchar (6)
AS
DELETE dbo.MINBTH
 WHERE [userId] = @userId
   AND [batchId] = @batchId
return @@rowcount 

