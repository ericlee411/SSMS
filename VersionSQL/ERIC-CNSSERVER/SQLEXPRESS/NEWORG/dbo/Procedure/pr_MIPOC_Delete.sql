/****** Object:  Procedure [dbo].[pr_MIPOC_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIPOC_Delete
	@pohId nvarchar (12),
	@pohRev smallint,
	@pocId int
AS
DELETE dbo.MIPOC
 WHERE [pohId] = @pohId
   AND [pohRev] = @pohRev
   AND [pocId] = @pocId
return @@rowcount 

