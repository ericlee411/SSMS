/****** Object:  Procedure [dbo].[pr_MITXCLS_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MITXCLS_Update
	@auth nvarchar (12),
	@transType smallint,
	@classType smallint,
	@class smallint,
	@descr nvarchar (60),
	@exempt bit,
	@authOrig nvarchar (12),
	@transTypeOrig smallint,
	@classTypeOrig smallint,
	@classOrig smallint,
	@TSCol rowversion output
AS
UPDATE MITXCLS
SET 	[auth] = @auth,
	[transType] = @transType,
	[classType] = @classType,
	[class] = @class,
	[descr] = @descr,
	[exempt] = @exempt
WHERE [auth] = @authOrig
  AND [transType] = @transTypeOrig
  AND [classType] = @classTypeOrig
  AND [class] = @classOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MITXCLS
	WHERE [auth] = @auth
	  AND [transType] = @transType
	  AND [classType] = @classType
	  AND [class] = @class
return @@rowcount

