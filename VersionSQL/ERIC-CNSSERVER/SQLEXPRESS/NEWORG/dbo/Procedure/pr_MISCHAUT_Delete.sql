/****** Object:  Procedure [dbo].[pr_MISCHAUT_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISCHAUT_Delete
	@schNum int,
	@schLine int,
	@uniqueId int
AS
DELETE dbo.MISCHAUT
 WHERE [schNum] = @schNum
   AND [schLine] = @schLine
   AND [uniqueId] = @uniqueId
return @@rowcount 

