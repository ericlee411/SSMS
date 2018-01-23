/****** Object:  Procedure [dbo].[pr_MITXRATE_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MITXRATE_Delete
	@authority nvarchar (12),
	@transType smallint,
	@buyerClass int
AS
DELETE dbo.MITXRATE
 WHERE [authority] = @authority
   AND [transType] = @transType
   AND [buyerClass] = @buyerClass
return @@rowcount 

