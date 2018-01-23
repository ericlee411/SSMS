/****** Object:  Procedure [dbo].[pr_MIDLOCA_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIDLOCA_Delete
	@locId nvarchar (6),
	@entry int
AS
DELETE dbo.MIDLOCA
 WHERE [locId] = @locId
   AND [entry] = @entry
return @@rowcount 

