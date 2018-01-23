/****** Object:  Procedure [dbo].[pr_MIPIBD_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIPIBD_Delete
	@userId nvarchar (8),
	@batchId nvarchar (6),
	@bType smallint,
	@entry int
AS
DELETE dbo.MIPIBD
 WHERE [userId] = @userId
   AND [batchId] = @batchId
   AND [bType] = @bType
   AND [entry] = @entry
return @@rowcount 

