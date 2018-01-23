/****** Object:  Procedure [dbo].[pr_MIPIBH_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIPIBH_Delete
	@userId nvarchar (8),
	@batchId nvarchar (6),
	@bType smallint
AS
DELETE dbo.MIPIBH
 WHERE [userId] = @userId
   AND [batchId] = @batchId
   AND [bType] = @bType
return @@rowcount 

