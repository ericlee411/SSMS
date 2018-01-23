/****** Object:  Procedure [dbo].[pr_MIACCT_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIACCT_Delete
	@setId nvarchar (8)
AS
DELETE dbo.MIACCT
 WHERE [setId] = @setId
return @@rowcount 

