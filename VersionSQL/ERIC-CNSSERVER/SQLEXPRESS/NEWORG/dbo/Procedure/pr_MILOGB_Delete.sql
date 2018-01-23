/****** Object:  Procedure [dbo].[pr_MILOGB_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MILOGB_Delete
	@tranDate nvarchar (8),
	@userId nvarchar (8),
	@entry int,
	@detail int,
	@locId nvarchar (6),
	@binId nvarchar (24)
AS
DELETE dbo.MILOGB
 WHERE [tranDate] = @tranDate
   AND [userId] = @userId
   AND [entry] = @entry
   AND [detail] = @detail
   AND [locId] = @locId
   AND [binId] = @binId
return @@rowcount 

