/****** Object:  Procedure [dbo].[pr_MISCHITEM_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISCHITEM_Delete
	@schNum int,
	@schLine int
AS
DELETE dbo.MISCHITEM
 WHERE [schNum] = @schNum
   AND [schLine] = @schLine
return @@rowcount 

