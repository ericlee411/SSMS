/****** Object:  Procedure [dbo].[pr_MISCHQTY_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MISCHQTY_Insert
	@schNum int,
	@schLine int,
	@schId nvarchar (6),
	@itemId nvarchar (24),
	@locId nvarchar (6),
	@dateISO nvarchar (8),
	@stkQty numeric (20, 6),
	@reqQty numeric (20, 6),
	@recQty numeric (20, 6),
	@planQty numeric (20, 6),
	@shortQty numeric (20, 6),
	@netChange numeric (20, 6)
AS
INSERT dbo.MISCHQTY
(	[schNum],
	[schLine],
	[schId],
	[itemId],
	[locId],
	[dateISO],
	[stkQty],
	[reqQty],
	[recQty],
	[planQty],
	[shortQty],
	[netChange]
)
VALUES
(
	@schNum,
	@schLine,
	@schId,
	@itemId,
	@locId,
	@dateISO,
	@stkQty,
	@reqQty,
	@recQty,
	@planQty,
	@shortQty,
	@netChange
)
IF @@ROWCOUNT = 1
return @@rowcount

