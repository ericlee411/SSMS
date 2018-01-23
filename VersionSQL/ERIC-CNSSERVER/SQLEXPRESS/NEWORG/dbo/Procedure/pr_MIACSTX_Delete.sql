/****** Object:  Procedure [dbo].[pr_MIACSTX_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIACSTX_Delete
	@addCostId nvarchar (8),
	@auth nvarchar (12)
AS
DELETE dbo.MIACSTX
 WHERE [addCostId] = @addCostId
   AND [auth] = @auth
return @@rowcount 

