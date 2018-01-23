/****** Object:  Procedure [dbo].[pr_MIBINH_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIBINH_Delete
	@itemId nvarchar (24),
	@tranDate nvarchar (8),
	@userId nvarchar (8),
	@entry int,
	@detail int
AS
DELETE dbo.MIBINH
 WHERE [itemId] = @itemId
   AND [tranDate] = @tranDate
   AND [userId] = @userId
   AND [entry] = @entry
   AND [detail] = @detail
return @@rowcount 

