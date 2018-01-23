/****** Object:  Procedure [dbo].[pr_MIBINH_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIBINH_Update
	@itemId nvarchar (24),
	@tranDate nvarchar (8),
	@userId nvarchar (8),
	@entry int,
	@detail int,
	@locId nvarchar (6),
	@type smallint,
	@dType smallint,
	@trnQty numeric (20, 6),
	@recQty numeric (20, 6),
	@xvarPOId nvarchar (12),
	@xvarMOId nvarchar (15),
	@xvarParent nvarchar (24),
	@xvarICId nvarchar (256),
	@xvarToLoc nvarchar (6),
	@itemIdOrig nvarchar (24),
	@tranDateOrig nvarchar (8),
	@userIdOrig nvarchar (8),
	@entryOrig int,
	@detailOrig int,
	@TSCol rowversion output
AS
UPDATE MIBINH
SET 	[itemId] = @itemId,
	[tranDate] = @tranDate,
	[userId] = @userId,
	[entry] = @entry,
	[detail] = @detail,
	[locId] = @locId,
	[type] = @type,
	[dType] = @dType,
	[trnQty] = @trnQty,
	[recQty] = @recQty,
	[xvarPOId] = @xvarPOId,
	[xvarMOId] = @xvarMOId,
	[xvarParent] = @xvarParent,
	[xvarICId] = @xvarICId,
	[xvarToLoc] = @xvarToLoc
WHERE [itemId] = @itemIdOrig
  AND [tranDate] = @tranDateOrig
  AND [userId] = @userIdOrig
  AND [entry] = @entryOrig
  AND [detail] = @detailOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIBINH
	WHERE [itemId] = @itemId
	  AND [tranDate] = @tranDate
	  AND [userId] = @userId
	  AND [entry] = @entry
	  AND [detail] = @detail
return @@rowcount

