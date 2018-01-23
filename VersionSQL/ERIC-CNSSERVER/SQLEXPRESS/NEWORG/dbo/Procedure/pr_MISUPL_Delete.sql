/****** Object:  Procedure [dbo].[pr_MISUPL_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISUPL_Delete
	@suplId nvarchar (12)
AS
DELETE dbo.MISUPL
 WHERE [suplId] = @suplId
return @@rowcount 

