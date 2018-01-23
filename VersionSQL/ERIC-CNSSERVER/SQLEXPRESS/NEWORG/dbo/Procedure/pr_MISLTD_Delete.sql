/****** Object:  Procedure [dbo].[pr_MISLTD_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISLTD_Delete
	@tranDate nvarchar (8),
	@userId nvarchar (8),
	@entry int,
	@detail int,
	@prntLotId nvarchar (40)
AS
DELETE dbo.MISLTD
 WHERE [tranDate] = @tranDate
   AND [userId] = @userId
   AND [entry] = @entry
   AND [detail] = @detail
   AND [prntLotId] = @prntLotId
return @@rowcount 

