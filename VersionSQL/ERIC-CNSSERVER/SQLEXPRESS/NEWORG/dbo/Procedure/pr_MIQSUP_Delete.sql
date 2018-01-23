/****** Object:  Procedure [dbo].[pr_MIQSUP_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIQSUP_Delete
	@itemId nvarchar (24),
	@suplId nvarchar (12)
AS
DELETE dbo.MIQSUP
 WHERE [itemId] = @itemId
   AND [suplId] = @suplId
return @@rowcount 

