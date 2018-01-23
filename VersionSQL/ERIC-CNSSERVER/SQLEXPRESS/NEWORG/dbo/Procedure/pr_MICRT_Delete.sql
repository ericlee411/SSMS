/****** Object:  Procedure [dbo].[pr_MICRT_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MICRT_Delete
	@rateType nvarchar (2)
AS
DELETE dbo.MICRT
 WHERE [rateType] = @rateType
return @@rowcount 

