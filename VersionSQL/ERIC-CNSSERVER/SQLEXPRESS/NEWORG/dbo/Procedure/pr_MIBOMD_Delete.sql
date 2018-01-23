/****** Object:  Procedure [dbo].[pr_MIBOMD_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIBOMD_Delete
	@bomItem nvarchar (24),
	@bomRev nvarchar (6),
	@bomEntry int
AS
DELETE dbo.MIBOMD
 WHERE [bomItem] = @bomItem
   AND [bomRev] = @bomRev
   AND [bomEntry] = @bomEntry
return @@rowcount 

