/****** Object:  Procedure [dbo].[pr_MIWOD_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIWOD_Update
	@wohId nvarchar (12),
	@wodId int,
	@lineNbr smallint,
	@status smallint,
	@partId nvarchar (24),
	@bomRev nvarchar (6),
	@locId nvarchar (6),
	@jobId nvarchar (12),
	@initStartDate nvarchar (8),
	@realStartDate nvarchar (8),
	@initEndDate nvarchar (8),
	@realEndDate nvarchar (8),
	@reqQty numeric (20, 6),
	@resQty numeric (20, 6),
	@wipQty numeric (20, 6),
	@endQty numeric (20, 6),
	@cmnt nvarchar (60),
	@mohId nvarchar (15),
	@oeOrdNo nvarchar (256),
	@oeOrdDtLn int,
	@icTransQty numeric (20, 6),
	@fldXml text,
	@icLoc nvarchar (256),
	@customer nvarchar (256),
	@soShipDate nvarchar (8),
	@chkValidEndDt bit,
	@wohIdOrig nvarchar (12),
	@wodIdOrig int,
	@TSCol rowversion output
AS
UPDATE MIWOD
SET 	[wohId] = @wohId,
	[wodId] = @wodId,
	[lineNbr] = @lineNbr,
	[status] = @status,
	[partId] = @partId,
	[bomRev] = @bomRev,
	[locId] = @locId,
	[jobId] = @jobId,
	[initStartDate] = @initStartDate,
	[realStartDate] = @realStartDate,
	[initEndDate] = @initEndDate,
	[realEndDate] = @realEndDate,
	[reqQty] = @reqQty,
	[resQty] = @resQty,
	[wipQty] = @wipQty,
	[endQty] = @endQty,
	[cmnt] = @cmnt,
	[mohId] = @mohId,
	[oeOrdNo] = @oeOrdNo,
	[oeOrdDtLn] = @oeOrdDtLn,
	[icTransQty] = @icTransQty,
	[fldXml] = @fldXml,
	[icLoc] = @icLoc,
	[customer] = @customer,
	[soShipDate] = @soShipDate,
	[chkValidEndDt] = @chkValidEndDt
WHERE [wohId] = @wohIdOrig
  AND [wodId] = @wodIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIWOD
	WHERE [wohId] = @wohId
	  AND [wodId] = @wodId
return @@rowcount

