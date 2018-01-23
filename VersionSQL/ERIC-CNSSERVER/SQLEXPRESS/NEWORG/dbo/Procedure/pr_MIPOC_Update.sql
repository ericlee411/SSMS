/****** Object:  Procedure [dbo].[pr_MIPOC_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIPOC_Update
	@pohId nvarchar (12),
	@pohRev smallint,
	@pocId int,
	@lineNbr smallint,
	@suplId nvarchar (12),
	@addCostId nvarchar (8),
	@dStatus smallint,
	@curId nvarchar (3),
	@poDate nvarchar (8),
	@amt numeric (20, 6),
	@descr nvarchar (60),
	@prorMeth smallint,
	@glAcct nvarchar (45),
	@cmnt nvarchar (70),
	@taxCode1 nvarchar (12),
	@taxCode2 nvarchar (12),
	@taxCode3 nvarchar (12),
	@taxCode4 nvarchar (12),
	@taxCode5 nvarchar (12),
	@taxClass1 int,
	@taxClass2 int,
	@taxClass3 int,
	@taxClass4 int,
	@taxClass5 int,
	@taxBase1 numeric (20, 6),
	@taxBase2 numeric (20, 6),
	@taxBase3 numeric (20, 6),
	@taxBase4 numeric (20, 6),
	@taxBase5 numeric (20, 6),
	@taxRate1 numeric (20, 6),
	@taxRate2 numeric (20, 6),
	@taxRate3 numeric (20, 6),
	@taxRate4 numeric (20, 6),
	@taxRate5 numeric (20, 6),
	@taxAmt1 numeric (20, 6),
	@taxAmt2 numeric (20, 6),
	@taxAmt3 numeric (20, 6),
	@taxAmt4 numeric (20, 6),
	@taxAmt5 numeric (20, 6),
	@taxIncl1 smallint,
	@taxIncl2 smallint,
	@taxIncl3 smallint,
	@taxIncl4 smallint,
	@taxIncl5 smallint,
	@rate numeric (20, 6),
	@rateOper int,
	@taxAmt numeric (20, 6),
	@amtProRate numeric (20, 6),
	@invoiceNo nvarchar (22),
	@invoiced bit,
	@amtInvoiced numeric (20, 6),
	@pohIdOrig nvarchar (12),
	@pohRevOrig smallint,
	@pocIdOrig int,
	@TSCol rowversion output
AS
UPDATE MIPOC
SET 	[pohId] = @pohId,
	[pohRev] = @pohRev,
	[pocId] = @pocId,
	[lineNbr] = @lineNbr,
	[suplId] = @suplId,
	[addCostId] = @addCostId,
	[dStatus] = @dStatus,
	[curId] = @curId,
	[poDate] = @poDate,
	[amt] = @amt,
	[descr] = @descr,
	[prorMeth] = @prorMeth,
	[glAcct] = @glAcct,
	[cmnt] = @cmnt,
	[taxCode1] = @taxCode1,
	[taxCode2] = @taxCode2,
	[taxCode3] = @taxCode3,
	[taxCode4] = @taxCode4,
	[taxCode5] = @taxCode5,
	[taxClass1] = @taxClass1,
	[taxClass2] = @taxClass2,
	[taxClass3] = @taxClass3,
	[taxClass4] = @taxClass4,
	[taxClass5] = @taxClass5,
	[taxBase1] = @taxBase1,
	[taxBase2] = @taxBase2,
	[taxBase3] = @taxBase3,
	[taxBase4] = @taxBase4,
	[taxBase5] = @taxBase5,
	[taxRate1] = @taxRate1,
	[taxRate2] = @taxRate2,
	[taxRate3] = @taxRate3,
	[taxRate4] = @taxRate4,
	[taxRate5] = @taxRate5,
	[taxAmt1] = @taxAmt1,
	[taxAmt2] = @taxAmt2,
	[taxAmt3] = @taxAmt3,
	[taxAmt4] = @taxAmt4,
	[taxAmt5] = @taxAmt5,
	[taxIncl1] = @taxIncl1,
	[taxIncl2] = @taxIncl2,
	[taxIncl3] = @taxIncl3,
	[taxIncl4] = @taxIncl4,
	[taxIncl5] = @taxIncl5,
	[rate] = @rate,
	[rateOper] = @rateOper,
	[taxAmt] = @taxAmt,
	[amtProRate] = @amtProRate,
	[invoiceNo] = @invoiceNo,
	[invoiced] = @invoiced,
	[amtInvoiced] = @amtInvoiced
WHERE [pohId] = @pohIdOrig
  AND [pohRev] = @pohRevOrig
  AND [pocId] = @pocIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIPOC
	WHERE [pohId] = @pohId
	  AND [pohRev] = @pohRev
	  AND [pocId] = @pocId
return @@rowcount

