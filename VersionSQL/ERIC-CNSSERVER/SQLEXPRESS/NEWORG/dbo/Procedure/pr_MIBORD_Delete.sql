/****** Object:  Procedure [dbo].[pr_MIBORD_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIBORD_Delete
	@bomItem nvarchar (24),
	@bomRev nvarchar (6),
	@opCode nvarchar (24)
AS
DELETE dbo.MIBORD
 WHERE [bomItem] = @bomItem
   AND [bomRev] = @bomRev
   AND [opCode] = @opCode
return @@rowcount 

