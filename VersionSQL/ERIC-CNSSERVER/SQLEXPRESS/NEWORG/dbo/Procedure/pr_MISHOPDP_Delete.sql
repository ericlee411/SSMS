/****** Object:  Procedure [dbo].[pr_MISHOPDP_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISHOPDP_Delete
	@uniq int
AS
DELETE dbo.MISHOPDP
 WHERE [uniq] = @uniq
return @@rowcount 

