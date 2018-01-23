/****** Object:  Procedure [dbo].[pr_MIOPTN_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIOPTN_Delete
	@orgId nvarchar (12)
AS
DELETE dbo.MIOPTN
 WHERE [orgId] = @orgId
return @@rowcount 

