/****** Object:  Procedure [dbo].[pr_MIMTBD_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIMTBD_Update
	@userId nvarchar (8),
	@batchId nvarchar (6),
	@entry int,
	@lineNbr smallint,
	@type smallint,
	@itemId nvarchar (24),
	@revId nvarchar (6),
	@comment nvarchar (60),
	@qty numeric (20, 6),
	@jobId nvarchar (12),
	@locId nvarchar (6),
	@binId nvarchar (24),
	@byLot bit,
	@inverseDir bit,
	@xvarItemId nvarchar (24),
	@xvarToLoc nvarchar (6),
	@xvarBinId nvarchar (24),
	@xvarSuplId nvarchar (12),
	@xvarPOId nvarchar (12),
	@xvarPORev smallint,
	@xvarMOId nvarchar (15),
	@xvarSOId nvarchar (256),
	@xvarXol smallint,
	@xvarDtl int,
	@xvarOpCode nvarchar (24),
	@xvarICId nvarchar (256),
	@xvarICLoc nvarchar (256),
	@xvarNoStk bit,
	@xvarQbase smallint,
	@xvarLevel smallint,
	@xvarCost numeric (20, 6),
	@status smallint,
	@userIdOrig nvarchar (8),
	@batchIdOrig nvarchar (6),
	@entryOrig int,
	@TSCol rowversion output
AS
UPDATE MIMTBD
SET 	[userId] = @userId,
	[batchId] = @batchId,
	[entry] = @entry,
	[lineNbr] = @lineNbr,
	[type] = @type,
	[itemId] = @itemId,
	[revId] = @revId,
	[comment] = @comment,
	[qty] = @qty,
	[jobId] = @jobId,
	[locId] = @locId,
	[binId] = @binId,
	[byLot] = @byLot,
	[inverseDir] = @inverseDir,
	[xvarItemId] = @xvarItemId,
	[xvarToLoc] = @xvarToLoc,
	[xvarBinId] = @xvarBinId,
	[xvarSuplId] = @xvarSuplId,
	[xvarPOId] = @xvarPOId,
	[xvarPORev] = @xvarPORev,
	[xvarMOId] = @xvarMOId,
	[xvarSOId] = @xvarSOId,
	[xvarXol] = @xvarXol,
	[xvarDtl] = @xvarDtl,
	[xvarOpCode] = @xvarOpCode,
	[xvarICId] = @xvarICId,
	[xvarICLoc] = @xvarICLoc,
	[xvarNoStk] = @xvarNoStk,
	[xvarQbase] = @xvarQbase,
	[xvarLevel] = @xvarLevel,
	[xvarCost] = @xvarCost,
	[status] = @status
WHERE [userId] = @userIdOrig
  AND [batchId] = @batchIdOrig
  AND [entry] = @entryOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIMTBD
	WHERE [userId] = @userId
	  AND [batchId] = @batchId
	  AND [entry] = @entry
return @@rowcount

