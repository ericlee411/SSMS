/****** Object:  Procedure [dbo].[pr_MIITEMA_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIITEMA_Delete
	@itemId nvarchar (24),
	@uniquifier int
AS
DELETE dbo.MIITEMA
 WHERE [itemId] = @itemId
   AND [uniquifier] = @uniquifier
return @@rowcount 

