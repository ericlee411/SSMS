/****** Object:  Procedure [dbo].[pr_MIMOWCC_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIMOWCC_Delete
	@classId nvarchar (12)
AS
DELETE dbo.MIMOWCC
 WHERE [classId] = @classId
return @@rowcount 

