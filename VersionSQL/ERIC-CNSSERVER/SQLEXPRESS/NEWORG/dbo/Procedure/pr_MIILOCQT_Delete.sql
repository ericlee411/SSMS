/****** Object:  Procedure [dbo].[pr_MIILOCQT_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIILOCQT_Delete
	@itemId nvarchar (24),
	@locId nvarchar (6),
	@dateISO nvarchar (8)
AS
DELETE dbo.MIILOCQT
 WHERE [itemId] = @itemId
   AND [locId] = @locId
   AND [dateISO] = @dateISO
return @@rowcount 

