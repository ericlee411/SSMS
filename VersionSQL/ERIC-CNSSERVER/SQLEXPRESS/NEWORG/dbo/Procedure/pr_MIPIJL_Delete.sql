/****** Object:  Procedure [dbo].[pr_MIPIJL_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIPIJL_Delete
	@entry int
AS
DELETE dbo.MIPIJL
 WHERE [entry] = @entry
return @@rowcount 

