/****** Object:  Procedure [dbo].[pr_MISCKH_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISCKH_Delete
	@userId nvarchar (8),
	@itemId nvarchar (24)
AS
DELETE dbo.MISCKH
 WHERE [userId] = @userId
   AND [itemId] = @itemId
return @@rowcount 

