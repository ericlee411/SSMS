/****** Object:  Procedure [dbo].[pr_MIMTBD_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIMTBD_Insert
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
	@TSCol rowversion output 
AS
INSERT dbo.MIMTBD
(	[userId],
	[batchId],
	[entry],
	[lineNbr],
	[type],
	[itemId],
	[revId],
	[comment],
	[qty],
	[jobId],
	[locId],
	[binId],
	[byLot],
	[inverseDir],
	[xvarItemId],
	[xvarToLoc],
	[xvarBinId],
	[xvarSuplId],
	[xvarPOId],
	[xvarPORev],
	[xvarMOId],
	[xvarSOId],
	[xvarXol],
	[xvarDtl],
	[xvarOpCode],
	[xvarICId],
	[xvarICLoc],
	[xvarNoStk],
	[xvarQbase],
	[xvarLevel],
	[xvarCost],
	[status]
)
VALUES
(
	@userId,
	@batchId,
	@entry,
	@lineNbr,
	@type,
	@itemId,
	@revId,
	@comment,
	@qty,
	@jobId,
	@locId,
	@binId,
	@byLot,
	@inverseDir,
	@xvarItemId,
	@xvarToLoc,
	@xvarBinId,
	@xvarSuplId,
	@xvarPOId,
	@xvarPORev,
	@xvarMOId,
	@xvarSOId,
	@xvarXol,
	@xvarDtl,
	@xvarOpCode,
	@xvarICId,
	@xvarICLoc,
	@xvarNoStk,
	@xvarQbase,
	@xvarLevel,
	@xvarCost,
	@status
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIMTBD
	  WHERE [userId] = @userId
	   AND [batchId] = @batchId
	   AND [entry] = @entry
return @@rowcount

