/****** Object:  Procedure [dbo].[pr_MIALERT_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIALERT_Delete
	@userId nvarchar (8),
	@alertId int
AS
DELETE dbo.MIALERT
 WHERE [userId] = @userId
   AND [alertId] = @alertId
return @@rowcount 

