/****** Object:  Procedure [dbo].[pr_MIRESTRT_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIRESTRT_Delete
	@orgId nvarchar (12),
	@processId nvarchar (12),
	@userId nvarchar (8),
	@unqId int
AS
DELETE dbo.MIRESTRT
 WHERE [orgId] = @orgId
   AND [processId] = @processId
   AND [userId] = @userId
   AND [unqId] = @unqId
return @@rowcount 

