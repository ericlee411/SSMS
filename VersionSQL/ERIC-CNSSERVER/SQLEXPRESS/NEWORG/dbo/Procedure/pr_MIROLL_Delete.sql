/****** Object:  Procedure [dbo].[pr_MIROLL_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIROLL_Delete
	@userId nvarchar (8),
	@entry int
AS
DELETE dbo.MIROLL
 WHERE [userId] = @userId
   AND [entry] = @entry
return @@rowcount 

