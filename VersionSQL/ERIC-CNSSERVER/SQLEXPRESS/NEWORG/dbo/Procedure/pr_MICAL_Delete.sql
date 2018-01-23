/****** Object:  Procedure [dbo].[pr_MICAL_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MICAL_Delete
	@sCalDate nvarchar (8)
AS
DELETE dbo.MICAL
 WHERE [sCalDate] = @sCalDate
return @@rowcount 

