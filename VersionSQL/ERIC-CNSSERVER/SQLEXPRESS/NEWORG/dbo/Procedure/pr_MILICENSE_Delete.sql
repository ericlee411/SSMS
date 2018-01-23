/****** Object:  Procedure [dbo].[pr_MILICENSE_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MILICENSE_Delete
	@entry int
AS
DELETE dbo.MILICENSE
 WHERE [entry] = @entry
return @@rowcount 

