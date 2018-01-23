/****** Object:  Procedure [dbo].[pr_MIICST_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIICST_Delete
	@itemId nvarchar (24),
	@transDate nvarchar (8),
	@seqNo int
AS
DELETE dbo.MIICST
 WHERE [itemId] = @itemId
   AND [transDate] = @transDate
   AND [seqNo] = @seqNo
return @@rowcount 

