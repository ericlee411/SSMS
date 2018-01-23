/****** Object:  Procedure [dbo].[pr_MIWOH_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIWOH_Delete
	@wohId nvarchar (12)
AS
DELETE dbo.MIWOH
 WHERE [wohId] = @wohId
return @@rowcount 

