/****** Object:  Procedure [dbo].[pr_MIBLOC_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIBLOC_Delete
	@bomItem nvarchar (24),
	@bomRev nvarchar (6),
	@locId nvarchar (6)
AS
DELETE dbo.MIBLOC
 WHERE [bomItem] = @bomItem
   AND [bomRev] = @bomRev
   AND [locId] = @locId
return @@rowcount 

