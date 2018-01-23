/****** Object:  Procedure [dbo].[pr_MIMOMD_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIMOMD_Insert
	@mohId nvarchar (15),
	@momdId int,
	@lineNbr smallint,
	@dType int,
	@partId nvarchar (24),
	@bomRev nvarchar (6),
	@overRide int,
	@childOrdId nvarchar (15),
	@lead int,
	@qty numeric (20, 6),
	@reqQty numeric (20, 6),
	@relQty numeric (20, 6),
	@wipQty numeric (20, 6),
	@resQty numeric (20, 6),
	@endQty numeric (20, 6),
	@scrapQty numeric (20, 6),
	@podQty numeric (20, 6),
	@cmnt nvarchar (60),
	@srcLoc nvarchar (6),
	@opCode nvarchar (24),
	@scrapCost numeric (20, 6),
	@matCost numeric (20, 6),
	@nonItem bit,
	@nonItemDesc nvarchar (60),
	@nonItemCost numeric (20, 6),
	@fldXml text,
	@TSCol rowversion output 
AS
INSERT dbo.MIMOMD
(	[mohId],
	[momdId],
	[lineNbr],
	[dType],
	[partId],
	[bomRev],
	[overRide],
	[childOrdId],
	[lead],
	[qty],
	[reqQty],
	[relQty],
	[wipQty],
	[resQty],
	[endQty],
	[scrapQty],
	[podQty],
	[cmnt],
	[srcLoc],
	[opCode],
	[scrapCost],
	[matCost],
	[nonItem],
	[nonItemDesc],
	[nonItemCost],
	[fldXml]
)
VALUES
(
	@mohId,
	@momdId,
	@lineNbr,
	@dType,
	@partId,
	@bomRev,
	@overRide,
	@childOrdId,
	@lead,
	@qty,
	@reqQty,
	@relQty,
	@wipQty,
	@resQty,
	@endQty,
	@scrapQty,
	@podQty,
	@cmnt,
	@srcLoc,
	@opCode,
	@scrapCost,
	@matCost,
	@nonItem,
	@nonItemDesc,
	@nonItemCost,
	@fldXml
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIMOMD
	  WHERE [mohId] = @mohId
	   AND [momdId] = @momdId
return @@rowcount

