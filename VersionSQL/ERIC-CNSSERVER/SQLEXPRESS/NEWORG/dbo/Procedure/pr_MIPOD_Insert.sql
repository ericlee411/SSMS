/****** Object:  Procedure [dbo].[pr_MIPOD_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIPOD_Insert
	@pohId nvarchar (12),
	@pohRev smallint,
	@podId int,
	@dType smallint,
	@dStatus smallint,
	@invoiced smallint,
	@jobId nvarchar (12),
	@locId nvarchar (6),
	@itemId nvarchar (24),
	@ordered numeric (20, 6),
	@received numeric (20, 6),
	@price numeric (20, 6),
	@cost numeric (20, 6),
	@qInvoiced numeric (20, 6),
	@cInvoiced numeric (20, 6),
	@adCost numeric (20, 6),
	@initDueDate nvarchar (8),
	@realDueDate nvarchar (8),
	@promisedDate nvarchar (8),
	@lastRecvDate nvarchar (8),
	@descr nvarchar (60),
	@mfgId nvarchar (12),
	@viCode nvarchar (255),
	@poUOfM nvarchar (20),
	@poXStk numeric (20, 6),
	@acctId nvarchar (45),
	@idDist nvarchar (6),
	@cmt nvarchar (70),
	@taxCode1 nvarchar (12),
	@taxCode2 nvarchar (12),
	@taxCode3 nvarchar (12),
	@taxCode4 nvarchar (12),
	@taxCode5 nvarchar (12),
	@taxClass1 smallint,
	@taxClass2 smallint,
	@taxClass3 smallint,
	@taxClass4 smallint,
	@taxClass5 smallint,
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
	@rateOper smallint,
	@lineNbr smallint,
	@unitWgt numeric (20, 6),
	@addCost numeric (20, 6),
	@mohId nvarchar (15),
	@momdId int,
	@fldXml text,
	@TSCol rowversion output 
AS
INSERT dbo.MIPOD
(	[pohId],
	[pohRev],
	[podId],
	[dType],
	[dStatus],
	[invoiced],
	[jobId],
	[locId],
	[itemId],
	[ordered],
	[received],
	[price],
	[cost],
	[qInvoiced],
	[cInvoiced],
	[adCost],
	[initDueDate],
	[realDueDate],
	[promisedDate],
	[lastRecvDate],
	[descr],
	[mfgId],
	[viCode],
	[poUOfM],
	[poXStk],
	[acctId],
	[idDist],
	[cmt],
	[taxCode1],
	[taxCode2],
	[taxCode3],
	[taxCode4],
	[taxCode5],
	[taxClass1],
	[taxClass2],
	[taxClass3],
	[taxClass4],
	[taxClass5],
	[taxBase1],
	[taxBase2],
	[taxBase3],
	[taxBase4],
	[taxBase5],
	[taxRate1],
	[taxRate2],
	[taxRate3],
	[taxRate4],
	[taxRate5],
	[taxAmt1],
	[taxAmt2],
	[taxAmt3],
	[taxAmt4],
	[taxAmt5],
	[taxIncl1],
	[taxIncl2],
	[taxIncl3],
	[taxIncl4],
	[taxIncl5],
	[rate],
	[rateOper],
	[lineNbr],
	[unitWgt],
	[addCost],
	[mohId],
	[momdId],
	[fldXml]
)
VALUES
(
	@pohId,
	@pohRev,
	@podId,
	@dType,
	@dStatus,
	@invoiced,
	@jobId,
	@locId,
	@itemId,
	@ordered,
	@received,
	@price,
	@cost,
	@qInvoiced,
	@cInvoiced,
	@adCost,
	@initDueDate,
	@realDueDate,
	@promisedDate,
	@lastRecvDate,
	@descr,
	@mfgId,
	@viCode,
	@poUOfM,
	@poXStk,
	@acctId,
	@idDist,
	@cmt,
	@taxCode1,
	@taxCode2,
	@taxCode3,
	@taxCode4,
	@taxCode5,
	@taxClass1,
	@taxClass2,
	@taxClass3,
	@taxClass4,
	@taxClass5,
	@taxBase1,
	@taxBase2,
	@taxBase3,
	@taxBase4,
	@taxBase5,
	@taxRate1,
	@taxRate2,
	@taxRate3,
	@taxRate4,
	@taxRate5,
	@taxAmt1,
	@taxAmt2,
	@taxAmt3,
	@taxAmt4,
	@taxAmt5,
	@taxIncl1,
	@taxIncl2,
	@taxIncl3,
	@taxIncl4,
	@taxIncl5,
	@rate,
	@rateOper,
	@lineNbr,
	@unitWgt,
	@addCost,
	@mohId,
	@momdId,
	@fldXml
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIPOD
	  WHERE [pohId] = @pohId
	   AND [pohRev] = @pohRev
	   AND [podId] = @podId
return @@rowcount

