/****** Object:  Procedure [dbo].[pr_MISLND_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISLND_Delete
	@itemId nvarchar (24),
	@lotId nvarchar (40),
	@locId nvarchar (6)
AS
DELETE dbo.MISLND
 WHERE [itemId] = @itemId
   AND [lotId] = @lotId
   AND [locId] = @locId
return @@rowcount 

