/****** Object:  Procedure [dbo].[pr_MIPIWS_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIPIWS_Delete
	@userId nvarchar (8),
	@sortField nvarchar (30),
	@itemId nvarchar (24),
	@binId nvarchar (24),
	@seqNo nvarchar (3)
AS
DELETE dbo.MIPIWS
 WHERE [userId] = @userId
   AND [sortField] = @sortField
   AND [itemId] = @itemId
   AND [binId] = @binId
   AND [seqNo] = @seqNo
return @@rowcount 

