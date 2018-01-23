/****** Object:  Procedure [dbo].[pr_MITOOL_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MITOOL_Delete
	@toolId nvarchar (12)
AS
DELETE dbo.MITOOL
 WHERE [toolId] = @toolId
return @@rowcount 

