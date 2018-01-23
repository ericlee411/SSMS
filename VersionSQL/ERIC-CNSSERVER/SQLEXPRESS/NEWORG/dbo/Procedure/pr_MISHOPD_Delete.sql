/****** Object:  Procedure [dbo].[pr_MISHOPD_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISHOPD_Delete
	@userId nvarchar (8),
	@batchId nvarchar (6),
	@entry int
AS
DELETE dbo.MISHOPD
 WHERE [userId] = @userId
   AND [batchId] = @batchId
   AND [entry] = @entry
return @@rowcount 

