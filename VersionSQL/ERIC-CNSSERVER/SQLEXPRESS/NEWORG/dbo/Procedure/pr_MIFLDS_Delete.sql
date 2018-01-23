/****** Object:  Procedure [dbo].[pr_MIFLDS_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIFLDS_Delete
	@tblLoc smallint,
	@fldId int
AS
DELETE dbo.MIFLDS
 WHERE [tblLoc] = @tblLoc
   AND [fldId] = @fldId
return @@rowcount 

