/****** Object:  Procedure [dbo].[pr_MIPOH_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIPOH_Delete
	@pohId nvarchar (12),
	@pohRev smallint
AS
DELETE dbo.MIPOH
 WHERE [pohId] = @pohId
   AND [pohRev] = @pohRev
return @@rowcount 

