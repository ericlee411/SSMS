/****** Object:  Procedure [dbo].[pr_MIORDRI_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIORDRI_Delete
	@userId nvarchar (8)
AS
DELETE dbo.MIORDRI
 WHERE [userId] = @userId
return @@rowcount 

