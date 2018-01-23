/****** Object:  Procedure [dbo].[pr_MIITTX_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIITTX_Delete
	@itemId nvarchar (24),
	@auth nvarchar (12)
AS
DELETE dbo.MIITTX
 WHERE [itemId] = @itemId
   AND [auth] = @auth
return @@rowcount 

