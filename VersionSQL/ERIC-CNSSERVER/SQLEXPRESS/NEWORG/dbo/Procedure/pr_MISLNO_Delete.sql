/****** Object:  Procedure [dbo].[pr_MISLNO_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISLNO_Delete
	@itemId nvarchar (24)
AS
DELETE dbo.MISLNO
 WHERE [itemId] = @itemId
return @@rowcount 

