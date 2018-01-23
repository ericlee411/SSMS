/****** Object:  Procedure [dbo].[pr_MIWCSD_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIWCSD_Delete
	@shiftId nvarchar (12),
	@entry int
AS
DELETE dbo.MIWCSD
 WHERE [shiftId] = @shiftId
   AND [entry] = @entry
return @@rowcount 

