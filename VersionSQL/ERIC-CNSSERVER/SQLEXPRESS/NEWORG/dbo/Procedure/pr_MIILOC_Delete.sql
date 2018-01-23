/****** Object:  Procedure [dbo].[pr_MIILOC_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIILOC_Delete
	@itemId nvarchar (24),
	@locId nvarchar (6)
AS
DELETE dbo.MIILOC
 WHERE [itemId] = @itemId
   AND [locId] = @locId
return @@rowcount 

