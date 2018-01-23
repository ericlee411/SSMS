/****** Object:  Procedure [dbo].[pr_MIPODC_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIPODC_Update
	@pohId nvarchar (12),
	@pohRev smallint,
	@podLn int,
	@pocId int,
	@suplId nvarchar (12),
	@addCostId nvarchar (8),
	@poDate nvarchar (8),
	@qty numeric (20, 6),
	@amt numeric (20, 6),
	@taxAmt numeric (20, 6),
	@descr nvarchar (60),
	@price numeric (20, 6),
	@extPrice numeric (20, 6),
	@extWgt numeric (20, 6),
	@include smallint,
	@processed bit,
	@fAmt numeric (20, 6),
	@fTaxAmt numeric (20, 6),
	@srcCur nvarchar (3),
	@pohIdOrig nvarchar (12),
	@pohRevOrig smallint,
	@podLnOrig int,
	@pocIdOrig int,
	@TSCol rowversion output
AS
UPDATE MIPODC
SET 	[pohId] = @pohId,
	[pohRev] = @pohRev,
	[podLn] = @podLn,
	[pocId] = @pocId,
	[suplId] = @suplId,
	[addCostId] = @addCostId,
	[poDate] = @poDate,
	[qty] = @qty,
	[amt] = @amt,
	[taxAmt] = @taxAmt,
	[descr] = @descr,
	[price] = @price,
	[extPrice] = @extPrice,
	[extWgt] = @extWgt,
	[include] = @include,
	[processed] = @processed,
	[fAmt] = @fAmt,
	[fTaxAmt] = @fTaxAmt,
	[srcCur] = @srcCur
WHERE [pohId] = @pohIdOrig
  AND [pohRev] = @pohRevOrig
  AND [podLn] = @podLnOrig
  AND [pocId] = @pocIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIPODC
	WHERE [pohId] = @pohId
	  AND [pohRev] = @pohRev
	  AND [podLn] = @podLn
	  AND [pocId] = @pocId
return @@rowcount

