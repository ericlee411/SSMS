/****** Object:  Procedure [dbo].[pr_MILOGH_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MILOGH_Delete
	@tranDate nvarchar (8),
	@userId nvarchar (8),
	@entry int
AS
DELETE dbo.MILOGH
 WHERE [tranDate] = @tranDate
   AND [userId] = @userId
   AND [entry] = @entry
return @@rowcount 

