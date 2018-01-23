/****** Object:  Procedure [dbo].[pr_MICCD_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MICCD_Insert
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
	@TSCol rowversion output 
AS
INSERT dbo.MICCD
(	[curId],
	[curName],
	[symbol],
	[decimals],
	[symPos],
	[thousSep],
	[decSep],
	[negDisp],
	[rateOper],
	[rate],
	[cultureId]
)
VALUES
(
	@curId,
	@curName,
	@symbol,
	@decimals,
	@symPos,
	@thousSep,
	@decSep,
	@negDisp,
	@rateOper,
	@rate,
	@cultureId
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MICCD
	  WHERE [curId] = @curId
return @@rowcount

