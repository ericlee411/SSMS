/****** Object:  Procedure [dbo].[pr_MIPOH_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIPOH_Insert
	@pohId nvarchar (12),
	@pohRev smallint,
	@poStatus smallint,
	@prntStatus smallint,
	@suplId nvarchar (12),
	@name nvarchar (60),
	@ordDate nvarchar (8),
	@prntDate nvarchar (8),
	@expDate nvarchar (8),
	@closeDate nvarchar (8),
	@invoiced bit,
	@jobId nvarchar (12),
	@locId nvarchar (6),
	@shpVia nvarchar (20),
	@fob nvarchar (20),
	@terms nvarchar (30),
	@buyer nvarchar (60),
	@contact nvarchar (60),
	@freight nvarchar (20),
	@homeCur nvarchar (3),
	@rateType nvarchar (2),
	@srcCur nvarchar (3),
	@rateDate nvarchar (8),
	@rate numeric (20, 6),
	@spread numeric (20, 6),
	@dateMatch smallint,
	@rateOp smallint,
	@maintDt datetime,
	@poUser nvarchar (8),
	@idInvc nvarchar (22),
	@taxGrp nvarchar (12),
	@bLocId nvarchar (6),
	@apBatch numeric (20, 6),
	@apEntry numeric (20, 6),
	@acctId nvarchar (45),
	@distId nvarchar (6),
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
	@taxIncl1 smallint,
	@taxIncl2 smallint,
	@taxIncl3 smallint,
	@taxIncl4 smallint,
	@taxIncl5 smallint,
	@taxBase1 numeric (20, 6),
	@taxBase2 numeric (20, 6),
	@taxBase3 numeric (20, 6),
	@taxBase4 numeric (20, 6),
	@taxBase5 numeric (20, 6),
	@taxAmt1 numeric (20, 6),
	@taxAmt2 numeric (20, 6),
	@taxAmt3 numeric (20, 6),
	@taxAmt4 numeric (20, 6),
	@taxAmt5 numeric (20, 6),
	@taxAmt numeric (20, 6),
	@fldXml text,
	@TSCol rowversion output 
AS
INSERT dbo.MIPOH
(	[pohId],
	[pohRev],
	[poStatus],
	[prntStatus],
	[suplId],
	[name],
	[ordDate],
	[prntDate],
	[expDate],
	[closeDate],
	[invoiced],
	[jobId],
	[locId],
	[shpVia],
	[fob],
	[terms],
	[buyer],
	[contact],
	[freight],
	[homeCur],
	[rateType],
	[srcCur],
	[rateDate],
	[rate],
	[spread],
	[dateMatch],
	[rateOp],
	[maintDt],
	[poUser],
	[idInvc],
	[taxGrp],
	[bLocId],
	[apBatch],
	[apEntry],
	[acctId],
	[distId],
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
	[taxIncl1],
	[taxIncl2],
	[taxIncl3],
	[taxIncl4],
	[taxIncl5],
	[taxBase1],
	[taxBase2],
	[taxBase3],
	[taxBase4],
	[taxBase5],
	[taxAmt1],
	[taxAmt2],
	[taxAmt3],
	[taxAmt4],
	[taxAmt5],
	[taxAmt],
	[fldXml]
)
VALUES
(
	@pohId,
	@pohRev,
	@poStatus,
	@prntStatus,
	@suplId,
	@name,
	@ordDate,
	@prntDate,
	@expDate,
	@closeDate,
	@invoiced,
	@jobId,
	@locId,
	@shpVia,
	@fob,
	@terms,
	@buyer,
	@contact,
	@freight,
	@homeCur,
	@rateType,
	@srcCur,
	@rateDate,
	@rate,
	@spread,
	@dateMatch,
	@rateOp,
	@maintDt,
	@poUser,
	@idInvc,
	@taxGrp,
	@bLocId,
	@apBatch,
	@apEntry,
	@acctId,
	@distId,
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
	@taxIncl1,
	@taxIncl2,
	@taxIncl3,
	@taxIncl4,
	@taxIncl5,
	@taxBase1,
	@taxBase2,
	@taxBase3,
	@taxBase4,
	@taxBase5,
	@taxAmt1,
	@taxAmt2,
	@taxAmt3,
	@taxAmt4,
	@taxAmt5,
	@taxAmt,
	@fldXml
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIPOH
	  WHERE [pohId] = @pohId
	   AND [pohRev] = @pohRev
return @@rowcount

