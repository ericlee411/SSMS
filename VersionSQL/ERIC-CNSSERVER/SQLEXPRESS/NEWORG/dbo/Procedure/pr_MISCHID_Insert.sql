/****** Object:  Procedure [dbo].[pr_MISCHID_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MISCHID_Insert
	@schId nvarchar (6),
	@schNum int,
	@userId nvarchar (8),
	@descr nvarchar (60),
	@singLoc bit,
	@locId text,
	@startDate nvarchar (8),
	@endDate nvarchar (8),
	@status smallint,
	@autoBuild smallint,
	@useAlt bit,
	@workWeek int,
	@docPath nvarchar (260),
	@initDate nvarchar (8),
	@shortage smallint,
	@mode smallint,
	@bOptimistic bit,
	@inclSalesOrd bit,
	@inclSalesInv bit,
	@inclQuotes bit,
	@salesLoc nvarchar (6),
	@pegSalesOrders bit,
	@sortOrder smallint,
	@bInclRaw bit,
	@bInclRsc bit,
	@bInclTop bit,
	@bInclSub bit,
	@bInclBlk bit,
	@bInclOut bit,
	@bInclCur bit,
	@bInclSch bit,
	@bInclLvl bit,
	@bInclAll bit,
	@bOptShifts bit,
	@bExclSalesBef bit,
	@exclSalesBefDate nvarchar (8),
	@useAltLoc bit,
	@fldXml text,
	@TSCol rowversion output 
AS
INSERT dbo.MISCHID
(	[schId],
	[schNum],
	[userId],
	[descr],
	[singLoc],
	[locId],
	[startDate],
	[endDate],
	[status],
	[autoBuild],
	[useAlt],
	[workWeek],
	[docPath],
	[initDate],
	[shortage],
	[mode],
	[bOptimistic],
	[inclSalesOrd],
	[inclSalesInv],
	[inclQuotes],
	[salesLoc],
	[pegSalesOrders],
	[sortOrder],
	[bInclRaw],
	[bInclRsc],
	[bInclTop],
	[bInclSub],
	[bInclBlk],
	[bInclOut],
	[bInclCur],
	[bInclSch],
	[bInclLvl],
	[bInclAll],
	[bOptShifts],
	[bExclSalesBef],
	[exclSalesBefDate],
	[useAltLoc],
	[fldXml]
)
VALUES
(
	@schId,
	@schNum,
	@userId,
	@descr,
	@singLoc,
	@locId,
	@startDate,
	@endDate,
	@status,
	@autoBuild,
	@useAlt,
	@workWeek,
	@docPath,
	@initDate,
	@shortage,
	@mode,
	@bOptimistic,
	@inclSalesOrd,
	@inclSalesInv,
	@inclQuotes,
	@salesLoc,
	@pegSalesOrders,
	@sortOrder,
	@bInclRaw,
	@bInclRsc,
	@bInclTop,
	@bInclSub,
	@bInclBlk,
	@bInclOut,
	@bInclCur,
	@bInclSch,
	@bInclLvl,
	@bInclAll,
	@bOptShifts,
	@bExclSalesBef,
	@exclSalesBefDate,
	@useAltLoc,
	@fldXml
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MISCHID
	  WHERE [schId] = @schId
return @@rowcount

