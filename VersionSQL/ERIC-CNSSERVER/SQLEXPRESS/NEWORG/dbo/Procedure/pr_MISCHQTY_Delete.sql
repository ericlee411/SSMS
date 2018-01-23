/****** Object:  Procedure [dbo].[pr_MISCHQTY_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISCHQTY_Delete
	@schNum int,
	@schLine int
AS
DELETE dbo.MISCHQTY
 WHERE [schNum] = @schNum
   AND [schLine] = @schLine
return @@rowcount 

