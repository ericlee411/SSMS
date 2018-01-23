/****** Object:  Procedure [dbo].[pr_MICRTH_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MICRTH_Delete
	@homeCur nvarchar (3),
	@rateType nvarchar (2)
AS
DELETE dbo.MICRTH
 WHERE [homeCur] = @homeCur
   AND [rateType] = @rateType
return @@rowcount 

