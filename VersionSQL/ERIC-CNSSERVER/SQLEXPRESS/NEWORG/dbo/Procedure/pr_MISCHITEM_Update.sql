/****** Object:  Procedure [dbo].[pr_MISCHITEM_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISCHITEM_Update
	@schNum int,
	@schLine int,
	@schId nvarchar (6),
	@itemId nvarchar (24),
	@locId nvarchar (6),
	@firstShortQty numeric (20, 6),
	@firstShortDate nvarchar (8),
	@maxShortQty numeric (20, 6),
	@maxShortDate nvarchar (8),
	@maxQty numeric (20, 6),
	@basisQty numeric (20, 6),
	@schNumOrig int,
	@schLineOrig int
AS
UPDATE MISCHITEM
SET 	[schNum] = @schNum,
	[schLine] = @schLine,
	[schId] = @schId,
	[itemId] = @itemId,
	[locId] = @locId,
	[firstShortQty] = @firstShortQty,
	[firstShortDate] = @firstShortDate,
	[maxShortQty] = @maxShortQty,
	[maxShortDate] = @maxShortDate,
	[maxQty] = @maxQty,
	[basisQty] = @basisQty
WHERE [schNum] = @schNumOrig
  AND [schLine] = @schLineOrig
IF @@ROWCOUNT = 1
return @@rowcount

