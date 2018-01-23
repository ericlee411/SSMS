/****** Object:  Procedure [dbo].[pr_MISCHAUTX_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISCHAUTX_Delete
	@schNum int,
	@schLine int,
	@uniqueId int
AS
DELETE dbo.MISCHAUTX
 WHERE [schNum] = @schNum
   AND [schLine] = @schLine
   AND [uniqueId] = @uniqueId
return @@rowcount 

