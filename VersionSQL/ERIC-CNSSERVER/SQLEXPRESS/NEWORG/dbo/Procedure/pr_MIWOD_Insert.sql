/****** Object:  Procedure [dbo].[pr_MIWOD_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIWOD_Insert
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
	@TSCol rowversion output 
AS
INSERT dbo.MIWOD
(	[wohId],
	[wodId],
	[lineNbr],
	[status],
	[partId],
	[bomRev],
	[locId],
	[jobId],
	[initStartDate],
	[realStartDate],
	[initEndDate],
	[realEndDate],
	[reqQty],
	[resQty],
	[wipQty],
	[endQty],
	[cmnt],
	[mohId],
	[oeOrdNo],
	[oeOrdDtLn],
	[icTransQty],
	[fldXml],
	[icLoc],
	[customer],
	[soShipDate],
	[chkValidEndDt]
)
VALUES
(
	@wohId,
	@wodId,
	@lineNbr,
	@status,
	@partId,
	@bomRev,
	@locId,
	@jobId,
	@initStartDate,
	@realStartDate,
	@initEndDate,
	@realEndDate,
	@reqQty,
	@resQty,
	@wipQty,
	@endQty,
	@cmnt,
	@mohId,
	@oeOrdNo,
	@oeOrdDtLn,
	@icTransQty,
	@fldXml,
	@icLoc,
	@customer,
	@soShipDate,
	@chkValidEndDt
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIWOD
	  WHERE [wohId] = @wohId
	   AND [wodId] = @wodId
return @@rowcount

