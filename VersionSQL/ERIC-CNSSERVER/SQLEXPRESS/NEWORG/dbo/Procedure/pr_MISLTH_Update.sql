/****** Object:  Procedure [dbo].[pr_MISLTH_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISLTH_Update
	@tranDate nvarchar (8),
	@userId nvarchar (8),
	@entry int,
	@detail int,
	@itemId nvarchar (24),
	@prntItemId nvarchar (24),
	@locId nvarchar (6),
	@binId nvarchar (24),
	@jobId nvarchar (12),
	@type smallint,
	@xvarToLoc nvarchar (6),
	@xvarBinId nvarchar (24),
	@xvarPOId nvarchar (12),
	@xvarPORev smallint,
	@xvarWOId nvarchar (12),
	@xvarMOId nvarchar (15),
	@xvarSOId nvarchar (256),
	@xvarSOLn int,
	@xvarSuplId nvarchar (12),
	@xvarItemId nvarchar (24),
	@xvarOpCode nvarchar (24),
	@parentFlag bit,
	@track smallint,
	@trnQty numeric (20, 6),
	@rdyQty numeric (20, 6),
	@recQty numeric (20, 6),
	@tranDateOrig nvarchar (8),
	@userIdOrig nvarchar (8),
	@entryOrig int,
	@detailOrig int,
	@TSCol rowversion output
AS
UPDATE MISLTH
SET 	[tranDate] = @tranDate,
	[userId] = @userId,
	[entry] = @entry,
	[detail] = @detail,
	[itemId] = @itemId,
	[prntItemId] = @prntItemId,
	[locId] = @locId,
	[binId] = @binId,
	[jobId] = @jobId,
	[type] = @type,
	[xvarToLoc] = @xvarToLoc,
	[xvarBinId] = @xvarBinId,
	[xvarPOId] = @xvarPOId,
	[xvarPORev] = @xvarPORev,
	[xvarWOId] = @xvarWOId,
	[xvarMOId] = @xvarMOId,
	[xvarSOId] = @xvarSOId,
	[xvarSOLn] = @xvarSOLn,
	[xvarSuplId] = @xvarSuplId,
	[xvarItemId] = @xvarItemId,
	[xvarOpCode] = @xvarOpCode,
	[parentFlag] = @parentFlag,
	[track] = @track,
	[trnQty] = @trnQty,
	[rdyQty] = @rdyQty,
	[recQty] = @recQty
WHERE [tranDate] = @tranDateOrig
  AND [userId] = @userIdOrig
  AND [entry] = @entryOrig
  AND [detail] = @detailOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MISLTH
	WHERE [tranDate] = @tranDate
	  AND [userId] = @userId
	  AND [entry] = @entry
	  AND [detail] = @detail
return @@rowcount

