/****** Object:  Procedure [dbo].[pr_MIMOWC_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIMOWC_Delete
	@wcId nvarchar (24)
AS
DELETE dbo.MIMOWC
 WHERE [wcId] = @wcId
return @@rowcount 

