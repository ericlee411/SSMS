/****** Object:  Procedure [dbo].[pr_MIACST_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIACST_Delete
	@addCostId nvarchar (8)
AS
DELETE dbo.MIACST
 WHERE [addCostId] = @addCostId
return @@rowcount 

