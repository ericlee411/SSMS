/****** Object:  Procedure [dbo].[pr_MISCHQTYX_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISCHQTYX_Delete
	@schNum int,
	@schLine int
AS
DELETE dbo.MISCHQTYX
 WHERE [schNum] = @schNum
   AND [schLine] = @schLine
return @@rowcount 

