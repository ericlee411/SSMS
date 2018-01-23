/****** Object:  Procedure [dbo].[pr_MISCHQTYX_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISCHQTYX_Update
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
	@netChange numeric (20, 6),
	@schNumOrig int,
	@schLineOrig int
AS
UPDATE MISCHQTYX
SET 	[schNum] = @schNum,
	[schLine] = @schLine,
	[schId] = @schId,
	[itemId] = @itemId,
	[locId] = @locId,
	[dateISO] = @dateISO,
	[stkQty] = @stkQty,
	[reqQty] = @reqQty,
	[recQty] = @recQty,
	[planQty] = @planQty,
	[shortQty] = @shortQty,
	[netChange] = @netChange
WHERE [schNum] = @schNumOrig
  AND [schLine] = @schLineOrig
IF @@ROWCOUNT = 1
return @@rowcount

