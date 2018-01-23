/****** Object:  Procedure [dbo].[pr_MIPOCV_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIPOCV_Delete
	@pohId nvarchar (12),
	@pohRev smallint,
	@poSuplId nvarchar (12)
AS
DELETE dbo.MIPOCV
 WHERE [pohId] = @pohId
   AND [pohRev] = @pohRev
   AND [poSuplId] = @poSuplId
return @@rowcount 

