/****** Object:  Procedure [dbo].[pr_MISHOPWK_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISHOPWK_Delete
	@userId nvarchar (8),
	@uniq int
AS
DELETE dbo.MISHOPWK
 WHERE [userId] = @userId
   AND [uniq] = @uniq
return @@rowcount 

