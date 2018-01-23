/****** Object:  Procedure [dbo].[pr_MISLHIST_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISLHIST_Delete
	@itemId nvarchar (24),
	@lotId nvarchar (40),
	@tranDate nvarchar (8),
	@userId nvarchar (8),
	@entry int,
	@detail int,
	@uniqueId int
AS
DELETE dbo.MISLHIST
 WHERE [itemId] = @itemId
   AND [lotId] = @lotId
   AND [tranDate] = @tranDate
   AND [userId] = @userId
   AND [entry] = @entry
   AND [detail] = @detail
   AND [uniqueId] = @uniqueId
return @@rowcount 

