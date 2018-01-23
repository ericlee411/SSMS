/****** Object:  Procedure [dbo].[pr_MICCD_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MICCD_Update
	@curId nvarchar (3),
	@curName nvarchar (60),
	@symbol nvarchar (4),
	@decimals smallint,
	@symPos smallint,
	@thousSep nvarchar (1),
	@decSep nvarchar (1),
	@negDisp smallint,
	@rateOper smallint,
	@rate numeric (20, 6),
	@cultureId nvarchar (8),
	@curIdOrig nvarchar (3),
	@TSCol rowversion output
AS
UPDATE MICCD
SET 	[curId] = @curId,
	[curName] = @curName,
	[symbol] = @symbol,
	[decimals] = @decimals,
	[symPos] = @symPos,
	[thousSep] = @thousSep,
	[decSep] = @decSep,
	[negDisp] = @negDisp,
	[rateOper] = @rateOper,
	[rate] = @rate,
	[cultureId] = @cultureId
WHERE [curId] = @curIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MICCD
	WHERE [curId] = @curId
return @@rowcount

