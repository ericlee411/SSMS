/****** Object:  Procedure [dbo].[pr_MICRTD_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MICRTD_Update
	@homeCur nvarchar (3),
	@rateType nvarchar (2),
	@srcCur nvarchar (3),
	@rateDate nvarchar (8),
	@rate numeric (20, 6),
	@spread numeric (20, 6),
	@dateMatch smallint,
	@rateOper smallint,
	@homeCurOrig nvarchar (3),
	@rateTypeOrig nvarchar (2),
	@srcCurOrig nvarchar (3),
	@rateDateOrig nvarchar (8),
	@TSCol rowversion output
AS
UPDATE MICRTD
SET 	[homeCur] = @homeCur,
	[rateType] = @rateType,
	[srcCur] = @srcCur,
	[rateDate] = @rateDate,
	[rate] = @rate,
	[spread] = @spread,
	[dateMatch] = @dateMatch,
	[rateOper] = @rateOper
WHERE [homeCur] = @homeCurOrig
  AND [rateType] = @rateTypeOrig
  AND [srcCur] = @srcCurOrig
  AND [rateDate] = @rateDateOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MICRTD
	WHERE [homeCur] = @homeCur
	  AND [rateType] = @rateType
	  AND [srcCur] = @srcCur
	  AND [rateDate] = @rateDate
return @@rowcount

