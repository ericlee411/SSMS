/****** Object:  Procedure [dbo].[pr_MIMOMD_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIMOMD_Delete
	@mohId nvarchar (15),
	@momdId int
AS
DELETE dbo.MIMOMD
 WHERE [mohId] = @mohId
   AND [momdId] = @momdId
return @@rowcount 

