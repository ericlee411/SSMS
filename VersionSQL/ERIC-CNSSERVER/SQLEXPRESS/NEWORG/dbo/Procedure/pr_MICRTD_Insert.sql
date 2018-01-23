/****** Object:  Procedure [dbo].[pr_MICRTD_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MICRTD_Insert
	@homeCur nvarchar (3),
	@rateType nvarchar (2),
	@srcCur nvarchar (3),
	@rateDate nvarchar (8),
	@rate numeric (20, 6),
	@spread numeric (20, 6),
	@dateMatch smallint,
	@rateOper smallint,
	@TSCol rowversion output 
AS
INSERT dbo.MICRTD
(	[homeCur],
	[rateType],
	[srcCur],
	[rateDate],
	[rate],
	[spread],
	[dateMatch],
	[rateOper]
)
VALUES
(
	@homeCur,
	@rateType,
	@srcCur,
	@rateDate,
	@rate,
	@spread,
	@dateMatch,
	@rateOper
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MICRTD
	  WHERE [homeCur] = @homeCur
	   AND [rateType] = @rateType
	   AND [srcCur] = @srcCur
	   AND [rateDate] = @rateDate
return @@rowcount

