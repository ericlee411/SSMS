/****** Object:  Procedure [dbo].[pr_MIPODC_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIPODC_Delete
	@pohId nvarchar (12),
	@pohRev smallint,
	@podLn int,
	@pocId int
AS
DELETE dbo.MIPODC
 WHERE [pohId] = @pohId
   AND [pohRev] = @pohRev
   AND [podLn] = @podLn
   AND [pocId] = @pocId
return @@rowcount 

