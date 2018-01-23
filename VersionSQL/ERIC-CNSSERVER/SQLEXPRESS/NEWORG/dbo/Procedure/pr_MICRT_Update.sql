/****** Object:  Procedure [dbo].[pr_MICRT_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MICRT_Update
	@rateType nvarchar (2),
	@rateDesc nvarchar (60),
	@rateTypeOrig nvarchar (2),
	@TSCol rowversion output
AS
UPDATE MICRT
SET 	[rateType] = @rateType,
	[rateDesc] = @rateDesc
WHERE [rateType] = @rateTypeOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MICRT
	WHERE [rateType] = @rateType
return @@rowcount

