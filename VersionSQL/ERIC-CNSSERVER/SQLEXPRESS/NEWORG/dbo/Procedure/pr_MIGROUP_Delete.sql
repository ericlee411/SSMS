/****** Object:  Procedure [dbo].[pr_MIGROUP_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIGROUP_Delete
	@groupId nvarchar (8)
AS
DELETE dbo.MIGROUP
 WHERE [groupId] = @groupId
return @@rowcount 

