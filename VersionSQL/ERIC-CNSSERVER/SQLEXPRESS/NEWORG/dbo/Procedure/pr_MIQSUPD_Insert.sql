/****** Object:  Procedure [dbo].[pr_MIQSUPD_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIQSUPD_Insert
	@itemId nvarchar (24),
	@suplId nvarchar (12),
	@minQty int,
	@dType int,
	@price numeric (20, 6),
	@discount numeric (20, 6),
	@cmnt nvarchar (60),
	@TSCol rowversion output 
AS
INSERT dbo.MIQSUPD
(	[itemId],
	[suplId],
	[minQty],
	[dType],
	[price],
	[discount],
	[cmnt]
)
VALUES
(
	@itemId,
	@suplId,
	@minQty,
	@dType,
	@price,
	@discount,
	@cmnt
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIQSUPD
	  WHERE [itemId] = @itemId
	   AND [suplId] = @suplId
	   AND [minQty] = @minQty
return @@rowcount

