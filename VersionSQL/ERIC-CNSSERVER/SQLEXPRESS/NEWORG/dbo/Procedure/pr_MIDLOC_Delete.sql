/****** Object:  Procedure [dbo].[pr_MIDLOC_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIDLOC_Delete
	@locId nvarchar (6)
AS
DELETE dbo.MIDLOC
 WHERE [locId] = @locId
return @@rowcount 

