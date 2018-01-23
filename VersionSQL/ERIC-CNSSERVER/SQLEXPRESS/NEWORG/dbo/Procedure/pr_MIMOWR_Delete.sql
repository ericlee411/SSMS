/****** Object:  Procedure [dbo].[pr_MIMOWR_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIMOWR_Delete
	@wcId nvarchar (24),
	@entry int
AS
DELETE dbo.MIMOWR
 WHERE [wcId] = @wcId
   AND [entry] = @entry
return @@rowcount 

