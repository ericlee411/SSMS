/****** Object:  Procedure [dbo].[pr_MIUSER_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIUSER_Delete
	@userId nvarchar (8)
AS
DELETE dbo.MIUSER
 WHERE [userId] = @userId
return @@rowcount 

