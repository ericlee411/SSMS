/****** Object:  Procedure [dbo].[pr_MIBOMH_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIBOMH_Delete
	@bomItem nvarchar (24),
	@bomRev nvarchar (6)
AS
DELETE dbo.MIBOMH
 WHERE [bomItem] = @bomItem
   AND [bomRev] = @bomRev
return @@rowcount 

