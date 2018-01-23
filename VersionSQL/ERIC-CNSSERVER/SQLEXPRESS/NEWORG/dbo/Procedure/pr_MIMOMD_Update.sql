/****** Object:  Procedure [dbo].[pr_MIMOMD_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIMOMD_Update
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
	@mohIdOrig nvarchar (15),
	@momdIdOrig int,
	@TSCol rowversion output
AS
UPDATE MIMOMD
SET 	[mohId] = @mohId,
	[momdId] = @momdId,
	[lineNbr] = @lineNbr,
	[dType] = @dType,
	[partId] = @partId,
	[bomRev] = @bomRev,
	[overRide] = @overRide,
	[childOrdId] = @childOrdId,
	[lead] = @lead,
	[qty] = @qty,
	[reqQty] = @reqQty,
	[relQty] = @relQty,
	[wipQty] = @wipQty,
	[resQty] = @resQty,
	[endQty] = @endQty,
	[scrapQty] = @scrapQty,
	[podQty] = @podQty,
	[cmnt] = @cmnt,
	[srcLoc] = @srcLoc,
	[opCode] = @opCode,
	[scrapCost] = @scrapCost,
	[matCost] = @matCost,
	[nonItem] = @nonItem,
	[nonItemDesc] = @nonItemDesc,
	[nonItemCost] = @nonItemCost,
	[fldXml] = @fldXml
WHERE [mohId] = @mohIdOrig
  AND [momdId] = @momdIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIMOMD
	WHERE [mohId] = @mohId
	  AND [momdId] = @momdId
return @@rowcount

