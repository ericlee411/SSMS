/****** Object:  Procedure [dbo].[pr_MIMTBH_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIMTBH_Delete
	@userId nvarchar (8),
	@batchId nvarchar (6)
AS
DELETE dbo.MIMTBH
 WHERE [userId] = @userId
   AND [batchId] = @batchId
return @@rowcount 

