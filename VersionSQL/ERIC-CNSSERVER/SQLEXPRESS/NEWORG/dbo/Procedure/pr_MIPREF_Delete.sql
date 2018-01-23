/****** Object:  Procedure [dbo].[pr_MIPREF_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIPREF_Delete
	@userId nvarchar (8)
AS
DELETE dbo.MIPREF
 WHERE [userId] = @userId
return @@rowcount 

