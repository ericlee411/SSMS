/****** Object:  Procedure [dbo].[pr_MIMOWCC_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIMOWCC_Update
	@classId nvarchar (12),
	@descr nvarchar (60),
	@docPath nvarchar (260),
	@fldXml text,
	@classIdOrig nvarchar (12),
	@TSCol rowversion output
AS
UPDATE MIMOWCC
SET 	[classId] = @classId,
	[descr] = @descr,
	[docPath] = @docPath,
	[fldXml] = @fldXml
WHERE [classId] = @classIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIMOWCC
	WHERE [classId] = @classId
return @@rowcount

