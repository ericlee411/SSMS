/****** Object:  Procedure [dbo].[pr_MIITEM_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIITEM_Delete
	@itemId nvarchar (24)
AS
DELETE dbo.MIITEM
 WHERE [itemId] = @itemId
return @@rowcount 

