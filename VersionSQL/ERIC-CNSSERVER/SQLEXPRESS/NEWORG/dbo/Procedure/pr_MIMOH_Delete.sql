/****** Object:  Procedure [dbo].[pr_MIMOH_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIMOH_Delete
	@mohId nvarchar (15)
AS
DELETE dbo.MIMOH
 WHERE [mohId] = @mohId
return @@rowcount 

