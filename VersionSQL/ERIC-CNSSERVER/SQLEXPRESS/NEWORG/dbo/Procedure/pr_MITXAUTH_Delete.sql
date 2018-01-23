/****** Object:  Procedure [dbo].[pr_MITXAUTH_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MITXAUTH_Delete
	@auth nvarchar (12)
AS
DELETE dbo.MITXAUTH
 WHERE [auth] = @auth
return @@rowcount 

