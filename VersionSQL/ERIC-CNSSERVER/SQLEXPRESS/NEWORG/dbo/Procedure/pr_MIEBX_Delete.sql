/****** Object:  Procedure [dbo].[pr_MIEBX_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIEBX_Delete
	@uniq int
AS
DELETE dbo.MIEBX
 WHERE [uniq] = @uniq
return @@rowcount 

