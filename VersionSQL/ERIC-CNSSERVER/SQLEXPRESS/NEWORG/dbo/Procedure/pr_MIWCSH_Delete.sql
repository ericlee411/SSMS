/****** Object:  Procedure [dbo].[pr_MIWCSH_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIWCSH_Delete
	@shiftId nvarchar (12)
AS
DELETE dbo.MIWCSH
 WHERE [shiftId] = @shiftId
return @@rowcount 

