/****** Object:  Procedure [dbo].[pr_MICCD_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MICCD_Delete
	@curId nvarchar (3)
AS
DELETE dbo.MICCD
 WHERE [curId] = @curId
return @@rowcount 

