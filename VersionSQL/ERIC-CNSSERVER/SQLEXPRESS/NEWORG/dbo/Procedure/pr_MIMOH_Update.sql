/****** Object:  Procedure [dbo].[pr_MIMOH_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIMOH_Update
	@mohId nvarchar (15),
	@lstMaintDt datetime,
	@descr nvarchar (60),
	@notes nvarchar (2000),
	@creator nvarchar (8),
	@releaser nvarchar (8),
	@jobId nvarchar (12),
	@locId nvarchar (6),
	@buildItem nvarchar (24),
	@buildNonItem bit,
	@buildNonItemDesc nvarchar (60),
	@bomItem nvarchar (24),
	@bomRev nvarchar (6),
	@moStat smallint,
	@prStat smallint,
	@ordQty numeric (20, 6),
	@ordDate nvarchar (8),
	@startDate nvarchar (8),
	@endDate nvarchar (8),
	@releaseDate nvarchar (8),
	@relOrdQty numeric (20, 6),
	@releaseCost numeric (20, 6),
	@relLabCost numeric (20, 6),
	@relOvrhdCost numeric (20, 6),
	@priority smallint,
	@markup numeric (20, 6),
	@wipQty numeric (20, 6),
	@resQty numeric (20, 6),
	@endQty numeric (20, 6),
	@closeDate nvarchar (8),
	@hdrTxt1 nvarchar (30),
	@hdrTxt2 nvarchar (30),
	@hdrTxt3 nvarchar (30),
	@hdrTxt4 nvarchar (30),
	@docPath nvarchar (260),
	@oeOrdNo nvarchar (256),
	@oeOrdDtLn int,
	@icTransQty numeric (20, 6),
	@onHold bit,
	@fldXml text,
	@icLoc nvarchar (256),
	@customer nvarchar (256),
	@soShipDate nvarchar (8),
	@chkValidEndDt bit,
	@buildSales nvarchar (256),
	@cumCost numeric (20, 6),
	@mohIdOrig nvarchar (15),
	@TSCol rowversion output
AS
UPDATE MIMOH
SET 	[mohId] = @mohId,
	[lstMaintDt] = @lstMaintDt,
	[descr] = @descr,
	[notes] = @notes,
	[creator] = @creator,
	[releaser] = @releaser,
	[jobId] = @jobId,
	[locId] = @locId,
	[buildItem] = @buildItem,
	[buildNonItem] = @buildNonItem,
	[buildNonItemDesc] = @buildNonItemDesc,
	[bomItem] = @bomItem,
	[bomRev] = @bomRev,
	[moStat] = @moStat,
	[prStat] = @prStat,
	[ordQty] = @ordQty,
	[ordDate] = @ordDate,
	[startDate] = @startDate,
	[endDate] = @endDate,
	[releaseDate] = @releaseDate,
	[relOrdQty] = @relOrdQty,
	[releaseCost] = @releaseCost,
	[relLabCost] = @relLabCost,
	[relOvrhdCost] = @relOvrhdCost,
	[priority] = @priority,
	[markup] = @markup,
	[wipQty] = @wipQty,
	[resQty] = @resQty,
	[endQty] = @endQty,
	[closeDate] = @closeDate,
	[hdrTxt1] = @hdrTxt1,
	[hdrTxt2] = @hdrTxt2,
	[hdrTxt3] = @hdrTxt3,
	[hdrTxt4] = @hdrTxt4,
	[docPath] = @docPath,
	[oeOrdNo] = @oeOrdNo,
	[oeOrdDtLn] = @oeOrdDtLn,
	[icTransQty] = @icTransQty,
	[onHold] = @onHold,
	[fldXml] = @fldXml,
	[icLoc] = @icLoc,
	[customer] = @customer,
	[soShipDate] = @soShipDate,
	[chkValidEndDt] = @chkValidEndDt,
	[buildSales] = @buildSales,
	[cumCost] = @cumCost
WHERE [mohId] = @mohIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIMOH
	WHERE [mohId] = @mohId
return @@rowcount

