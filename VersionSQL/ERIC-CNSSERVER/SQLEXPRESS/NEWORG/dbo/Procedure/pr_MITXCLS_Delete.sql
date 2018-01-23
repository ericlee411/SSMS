/****** Object:  Procedure [dbo].[pr_MITXCLS_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MITXCLS_Delete
	@auth nvarchar (12),
	@transType smallint,
	@classType smallint,
	@class smallint
AS
DELETE dbo.MITXCLS
 WHERE [auth] = @auth
   AND [transType] = @transType
   AND [classType] = @classType
   AND [class] = @class
return @@rowcount 

