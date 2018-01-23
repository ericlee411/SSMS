/****** Object:  Procedure [dbo].[pr_MINEED_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MINEED_Delete
	@needSource int,
	@needId nvarchar (15)
AS
DELETE dbo.MINEED
 WHERE [needSource] = @needSource
   AND [needId] = @needId
return @@rowcount 

