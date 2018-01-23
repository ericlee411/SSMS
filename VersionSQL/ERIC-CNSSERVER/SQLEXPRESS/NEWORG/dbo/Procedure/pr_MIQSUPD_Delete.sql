/****** Object:  Procedure [dbo].[pr_MIQSUPD_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIQSUPD_Delete
	@itemId nvarchar (24),
	@suplId nvarchar (12),
	@minQty int
AS
DELETE dbo.MIQSUPD
 WHERE [itemId] = @itemId
   AND [suplId] = @suplId
   AND [minQty] = @minQty
return @@rowcount 

