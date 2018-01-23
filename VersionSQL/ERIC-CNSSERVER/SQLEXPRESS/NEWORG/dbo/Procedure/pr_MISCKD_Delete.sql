/****** Object:  Procedure [dbo].[pr_MISCKD_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISCKD_Delete
	@userId nvarchar (8),
	@itemId nvarchar (24),
	@locId nvarchar (6)
AS
DELETE dbo.MISCKD
 WHERE [userId] = @userId
   AND [itemId] = @itemId
   AND [locId] = @locId
return @@rowcount 

