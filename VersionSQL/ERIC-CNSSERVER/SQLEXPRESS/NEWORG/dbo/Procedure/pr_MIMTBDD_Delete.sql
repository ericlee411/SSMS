/****** Object:  Procedure [dbo].[pr_MIMTBDD_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIMTBDD_Delete
	@userId nvarchar (8),
	@batchId nvarchar (6),
	@entry int,
	@detail int
AS
DELETE dbo.MIMTBDD
 WHERE [userId] = @userId
   AND [batchId] = @batchId
   AND [entry] = @entry
   AND [detail] = @detail
return @@rowcount 

