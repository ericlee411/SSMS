/****** Object:  Procedure [dbo].[pr_MIQMFG_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIQMFG_Delete
	@itemId nvarchar (24),
	@mfgId nvarchar (12)
AS
DELETE dbo.MIQMFG
 WHERE [itemId] = @itemId
   AND [mfgId] = @mfgId
return @@rowcount 

