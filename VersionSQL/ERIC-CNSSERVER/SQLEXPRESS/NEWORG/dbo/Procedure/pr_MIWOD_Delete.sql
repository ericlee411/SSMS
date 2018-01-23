/****** Object:  Procedure [dbo].[pr_MIWOD_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIWOD_Delete
	@wohId nvarchar (12),
	@wodId int
AS
DELETE dbo.MIWOD
 WHERE [wohId] = @wohId
   AND [wodId] = @wodId
return @@rowcount 

