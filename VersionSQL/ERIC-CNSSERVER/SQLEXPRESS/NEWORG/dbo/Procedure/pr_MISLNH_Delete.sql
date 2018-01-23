/****** Object:  Procedure [dbo].[pr_MISLNH_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISLNH_Delete
	@itemId nvarchar (24),
	@lotId nvarchar (40)
AS
DELETE dbo.MISLNH
 WHERE [itemId] = @itemId
   AND [lotId] = @lotId
return @@rowcount 

