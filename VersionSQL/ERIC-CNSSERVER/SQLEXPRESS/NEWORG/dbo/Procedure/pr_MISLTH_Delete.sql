/****** Object:  Procedure [dbo].[pr_MISLTH_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISLTH_Delete
	@tranDate nvarchar (8),
	@userId nvarchar (8),
	@entry int,
	@detail int
AS
DELETE dbo.MISLTH
 WHERE [tranDate] = @tranDate
   AND [userId] = @userId
   AND [entry] = @entry
   AND [detail] = @detail
return @@rowcount 

