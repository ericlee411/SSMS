/****** Object:  Procedure [dbo].[pr_MIQSUP_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIQSUP_Insert
	@itemId nvarchar (24),
	@suplId nvarchar (12),
	@suplProdCode nvarchar (255),
	@poUOfM nvarchar (20),
	@uConvFact numeric (20, 6),
	@ordLstDate nvarchar (8),
	@recCostFunc numeric (20, 6),
	@ytdQty numeric (20, 6),
	@recCostSrc numeric (20, 6),
	@srcCur nvarchar (3),
	@lead smallint,
	@basePrice numeric (20, 6),
	@TSCol rowversion output 
AS
INSERT dbo.MIQSUP
(	[itemId],
	[suplId],
	[suplProdCode],
	[poUOfM],
	[uConvFact],
	[ordLstDate],
	[recCostFunc],
	[ytdQty],
	[recCostSrc],
	[srcCur],
	[lead],
	[basePrice]
)
VALUES
(
	@itemId,
	@suplId,
	@suplProdCode,
	@poUOfM,
	@uConvFact,
	@ordLstDate,
	@recCostFunc,
	@ytdQty,
	@recCostSrc,
	@srcCur,
	@lead,
	@basePrice
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIQSUP
	  WHERE [itemId] = @itemId
	   AND [suplId] = @suplId
return @@rowcount

