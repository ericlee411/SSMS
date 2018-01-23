/****** Object:  Procedure [dbo].[pr_MIPIBDD_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIPIBDD_Delete
	@userId nvarchar (8),
	@batchId nvarchar (6),
	@bType smallint,
	@entry int,
	@detail int
AS
DELETE dbo.MIPIBDD
 WHERE [userId] = @userId
   AND [batchId] = @batchId
   AND [bType] = @bType
   AND [entry] = @entry
   AND [detail] = @detail
return @@rowcount 

