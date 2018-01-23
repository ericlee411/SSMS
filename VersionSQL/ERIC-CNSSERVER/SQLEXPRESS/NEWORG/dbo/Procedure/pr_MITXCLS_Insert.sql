/****** Object:  Procedure [dbo].[pr_MITXCLS_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MITXCLS_Insert
	@auth nvarchar (12),
	@transType smallint,
	@classType smallint,
	@class smallint,
	@descr nvarchar (60),
	@exempt bit,
	@TSCol rowversion output 
AS
INSERT dbo.MITXCLS
(	[auth],
	[transType],
	[classType],
	[class],
	[descr],
	[exempt]
)
VALUES
(
	@auth,
	@transType,
	@classType,
	@class,
	@descr,
	@exempt
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MITXCLS
	  WHERE [auth] = @auth
	   AND [transType] = @transType
	   AND [classType] = @classType
	   AND [class] = @class
return @@rowcount

