/****** Object:  Procedure [dbo].[pr_MIPODC_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIPODC_Insert
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
	@TSCol rowversion output 
AS
INSERT dbo.MIPODC
(	[pohId],
	[pohRev],
	[podLn],
	[pocId],
	[suplId],
	[addCostId],
	[poDate],
	[qty],
	[amt],
	[taxAmt],
	[descr],
	[price],
	[extPrice],
	[extWgt],
	[include],
	[processed],
	[fAmt],
	[fTaxAmt],
	[srcCur]
)
VALUES
(
	@pohId,
	@pohRev,
	@podLn,
	@pocId,
	@suplId,
	@addCostId,
	@poDate,
	@qty,
	@amt,
	@taxAmt,
	@descr,
	@price,
	@extPrice,
	@extWgt,
	@include,
	@processed,
	@fAmt,
	@fTaxAmt,
	@srcCur
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIPODC
	  WHERE [pohId] = @pohId
	   AND [pohRev] = @pohRev
	   AND [podLn] = @podLn
	   AND [pocId] = @pocId
return @@rowcount

