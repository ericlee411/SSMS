/****** Object:  Procedure [dbo].[pr_MIMORD_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIMORD_Delete
	@mohId nvarchar (15),
	@opCode nvarchar (24)
AS
DELETE dbo.MIMORD
 WHERE [mohId] = @mohId
   AND [opCode] = @opCode
return @@rowcount 

