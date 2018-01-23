/****** Object:  Procedure [dbo].[pr_MIORGS_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIORGS_Delete
	@orgId nvarchar (12)
AS
DELETE dbo.MIORGS
 WHERE [orgId] = @orgId
return @@rowcount 

