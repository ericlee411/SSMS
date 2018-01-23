/****** Object:  Procedure [dbo].[pr_MINEEDD_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MINEEDD_Delete
	@needNo int,
	@uniqItemLoc int,
	@uniqDay int,
	@entry int
AS
DELETE dbo.MINEEDD
 WHERE [needNo] = @needNo
   AND [uniqItemLoc] = @uniqItemLoc
   AND [uniqDay] = @uniqDay
   AND [entry] = @entry
return @@rowcount 

