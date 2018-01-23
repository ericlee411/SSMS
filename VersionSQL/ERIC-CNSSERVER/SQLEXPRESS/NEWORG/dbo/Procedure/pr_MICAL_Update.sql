/****** Object:  Procedure [dbo].[pr_MICAL_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MICAL_Update
	@sCalDate nvarchar (8),
	@dtInfo nvarchar (60),
	@type smallint,
	@sCalDateOrig nvarchar (8),
	@TSCol rowversion output
AS
UPDATE MICAL
SET 	[sCalDate] = @sCalDate,
	[dtInfo] = @dtInfo,
	[type] = @type
WHERE [sCalDate] = @sCalDateOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MICAL
	WHERE [sCalDate] = @sCalDate
return @@rowcount

