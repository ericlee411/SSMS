/****** Object:  Procedure [dbo].[pr_MIPOD_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIPOD_Delete
	@pohId nvarchar (12),
	@pohRev smallint,
	@podId int
AS
DELETE dbo.MIPOD
 WHERE [pohId] = @pohId
   AND [pohRev] = @pohRev
   AND [podId] = @podId
return @@rowcount 

