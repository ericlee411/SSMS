/****** Object:  Procedure [dbo].[pr_MISLPRC_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISLPRC_Delete
	@lineNbr smallint
AS
DELETE dbo.MISLPRC
 WHERE [lineNbr] = @lineNbr
return @@rowcount 

