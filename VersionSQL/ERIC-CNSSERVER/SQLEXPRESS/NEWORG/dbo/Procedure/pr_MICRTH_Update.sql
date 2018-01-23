/****** Object:  Procedure [dbo].[pr_MICRTH_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MICRTH_Update
	@homeCur nvarchar (3),
	@rateType nvarchar (2),
	@tblDesc nvarchar (60),
	@dateMatch smallint,
	@rateOper smallint,
	@rateSrc nvarchar (60),
	@homeCurOrig nvarchar (3),
	@rateTypeOrig nvarchar (2),
	@TSCol rowversion output
AS
UPDATE MICRTH
SET 	[homeCur] = @homeCur,
	[rateType] = @rateType,
	[tblDesc] = @tblDesc,
	[dateMatch] = @dateMatch,
	[rateOper] = @rateOper,
	[rateSrc] = @rateSrc
WHERE [homeCur] = @homeCurOrig
  AND [rateType] = @rateTypeOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MICRTH
	WHERE [homeCur] = @homeCur
	  AND [rateType] = @rateType
return @@rowcount

