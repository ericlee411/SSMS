/****** Object:  Procedure [dbo].[pr_MIPORCVR_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIPORCVR_Delete
	@tranDate nvarchar (8),
	@userId nvarchar (8),
	@entry int
AS
DELETE dbo.MIPORCVR
 WHERE [tranDate] = @tranDate
   AND [userId] = @userId
   AND [entry] = @entry
return @@rowcount 

