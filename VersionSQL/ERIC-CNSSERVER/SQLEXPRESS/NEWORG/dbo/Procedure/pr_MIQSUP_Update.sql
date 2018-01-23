/****** Object:  Procedure [dbo].[pr_MIQSUP_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIQSUP_Update
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
	@itemIdOrig nvarchar (24),
	@suplIdOrig nvarchar (12),
	@TSCol rowversion output
AS
UPDATE MIQSUP
SET 	[itemId] = @itemId,
	[suplId] = @suplId,
	[suplProdCode] = @suplProdCode,
	[poUOfM] = @poUOfM,
	[uConvFact] = @uConvFact,
	[ordLstDate] = @ordLstDate,
	[recCostFunc] = @recCostFunc,
	[ytdQty] = @ytdQty,
	[recCostSrc] = @recCostSrc,
	[srcCur] = @srcCur,
	[lead] = @lead,
	[basePrice] = @basePrice
WHERE [itemId] = @itemIdOrig
  AND [suplId] = @suplIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIQSUP
	WHERE [itemId] = @itemId
	  AND [suplId] = @suplId
return @@rowcount

