/****** Object:  Procedure [dbo].[pr_MINBTD_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MINBTD_Delete
	@userId nvarchar (8),
	@batchId nvarchar (6),
	@entry int
AS
DELETE dbo.MINBTD
 WHERE [userId] = @userId
   AND [batchId] = @batchId
   AND [entry] = @entry
return @@rowcount 

