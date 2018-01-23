/****** Object:  Procedure [dbo].[pr_MISCHID_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISCHID_Delete
	@schId nvarchar (6)
AS
DELETE dbo.MISCHID
 WHERE [schId] = @schId
return @@rowcount 

