/****** Object:  Procedure [dbo].[pr_MINEEDH_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MINEEDH_Delete
	@needNo int,
	@uniqItemLoc int
AS
DELETE dbo.MINEEDH
 WHERE [needNo] = @needNo
   AND [uniqItemLoc] = @uniqItemLoc
return @@rowcount 

