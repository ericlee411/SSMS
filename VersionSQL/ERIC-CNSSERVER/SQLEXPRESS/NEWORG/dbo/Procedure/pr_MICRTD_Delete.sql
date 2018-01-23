/****** Object:  Procedure [dbo].[pr_MICRTD_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MICRTD_Delete
	@homeCur nvarchar (3),
	@rateType nvarchar (2),
	@srcCur nvarchar (3),
	@rateDate nvarchar (8)
AS
DELETE dbo.MICRTD
 WHERE [homeCur] = @homeCur
   AND [rateType] = @rateType
   AND [srcCur] = @srcCur
   AND [rateDate] = @rateDate
return @@rowcount 

