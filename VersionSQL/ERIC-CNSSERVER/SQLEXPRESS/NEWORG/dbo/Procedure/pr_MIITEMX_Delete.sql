/****** Object:  Procedure [dbo].[pr_MIITEMX_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIITEMX_Delete
	@itemId nvarchar (24)
AS
DELETE dbo.MIITEMX
 WHERE [itemId] = @itemId
return @@rowcount 

