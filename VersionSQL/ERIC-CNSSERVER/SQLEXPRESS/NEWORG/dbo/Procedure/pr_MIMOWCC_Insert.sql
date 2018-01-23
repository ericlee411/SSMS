/****** Object:  Procedure [dbo].[pr_MIMOWCC_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIMOWCC_Insert
	@classId nvarchar (12),
	@descr nvarchar (60),
	@docPath nvarchar (260),
	@fldXml text,
	@TSCol rowversion output 
AS
INSERT dbo.MIMOWCC
(	[classId],
	[descr],
	[docPath],
	[fldXml]
)
VALUES
(
	@classId,
	@descr,
	@docPath,
	@fldXml
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIMOWCC
	  WHERE [classId] = @classId
return @@rowcount

