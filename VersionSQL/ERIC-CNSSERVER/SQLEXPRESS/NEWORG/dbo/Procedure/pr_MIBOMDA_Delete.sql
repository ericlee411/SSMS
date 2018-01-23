/****** Object:  Procedure [dbo].[pr_MIBOMDA_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIBOMDA_Delete
	@bomItem nvarchar (24),
	@bomRev nvarchar (6),
	@bomEntry int,
	@uniquifier int
AS
DELETE dbo.MIBOMDA
 WHERE [bomItem] = @bomItem
   AND [bomRev] = @bomRev
   AND [bomEntry] = @bomEntry
   AND [uniquifier] = @uniquifier
return @@rowcount 

