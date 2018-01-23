/****** Object:  Procedure [dbo].[pr_MIGLACCT_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIGLACCT_Delete
	@acctId nvarchar (45)
AS
DELETE dbo.MIGLACCT
 WHERE [acctId] = @acctId
return @@rowcount 

