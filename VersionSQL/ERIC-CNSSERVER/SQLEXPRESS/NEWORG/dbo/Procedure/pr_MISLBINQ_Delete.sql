/****** Object:  Procedure [dbo].[pr_MISLBINQ_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISLBINQ_Delete
	@locId nvarchar (6),
	@binId nvarchar (24),
	@lotId nvarchar (40)
AS
DELETE dbo.MISLBINQ
 WHERE [locId] = @locId
   AND [binId] = @binId
   AND [lotId] = @lotId
return @@rowcount 

