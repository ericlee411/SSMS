/****** Object:  Procedure [dbo].[pr_MIQSUPD_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIQSUPD_Update
	@itemId nvarchar (24),
	@suplId nvarchar (12),
	@minQty int,
	@dType int,
	@price numeric (20, 6),
	@discount numeric (20, 6),
	@cmnt nvarchar (60),
	@itemIdOrig nvarchar (24),
	@suplIdOrig nvarchar (12),
	@minQtyOrig int,
	@TSCol rowversion output
AS
UPDATE MIQSUPD
SET 	[itemId] = @itemId,
	[suplId] = @suplId,
	[minQty] = @minQty,
	[dType] = @dType,
	[price] = @price,
	[discount] = @discount,
	[cmnt] = @cmnt
WHERE [itemId] = @itemIdOrig
  AND [suplId] = @suplIdOrig
  AND [minQty] = @minQtyOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIQSUPD
	WHERE [itemId] = @itemId
	  AND [suplId] = @suplId
	  AND [minQty] = @minQty
return @@rowcount

