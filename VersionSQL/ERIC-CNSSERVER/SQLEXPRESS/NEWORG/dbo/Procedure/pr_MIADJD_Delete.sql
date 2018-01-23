/****** Object:  Procedure [dbo].[pr_MIADJD_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIADJD_Delete
	@userId nvarchar (8),
	@itemId nvarchar (24)
AS
DELETE dbo.MIADJD
 WHERE [userId] = @userId
   AND [itemId] = @itemId
return @@rowcount 

