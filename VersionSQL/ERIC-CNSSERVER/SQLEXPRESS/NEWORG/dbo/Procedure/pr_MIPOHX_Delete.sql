/****** Object:  Procedure [dbo].[pr_MIPOHX_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIPOHX_Delete
	@pohId nvarchar (12),
	@pohRev smallint
AS
DELETE dbo.MIPOHX
 WHERE [pohId] = @pohId
   AND [pohRev] = @pohRev
return @@rowcount 

