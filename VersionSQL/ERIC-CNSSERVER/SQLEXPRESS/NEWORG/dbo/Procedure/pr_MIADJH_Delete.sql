/****** Object:  Procedure [dbo].[pr_MIADJH_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIADJH_Delete
	@userId nvarchar (8)
AS
DELETE dbo.MIADJH
 WHERE [userId] = @userId
return @@rowcount 

