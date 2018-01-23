/****** Object:  Procedure [dbo].[pr_MISLTH_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MISLTH_Insert
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
	@TSCol rowversion output 
AS
INSERT dbo.MISLTH
(	[tranDate],
	[userId],
	[entry],
	[detail],
	[itemId],
	[prntItemId],
	[locId],
	[binId],
	[jobId],
	[type],
	[xvarToLoc],
	[xvarBinId],
	[xvarPOId],
	[xvarPORev],
	[xvarWOId],
	[xvarMOId],
	[xvarSOId],
	[xvarSOLn],
	[xvarSuplId],
	[xvarItemId],
	[xvarOpCode],
	[parentFlag],
	[track],
	[trnQty],
	[rdyQty],
	[recQty]
)
VALUES
(
	@tranDate,
	@userId,
	@entry,
	@detail,
	@itemId,
	@prntItemId,
	@locId,
	@binId,
	@jobId,
	@type,
	@xvarToLoc,
	@xvarBinId,
	@xvarPOId,
	@xvarPORev,
	@xvarWOId,
	@xvarMOId,
	@xvarSOId,
	@xvarSOLn,
	@xvarSuplId,
	@xvarItemId,
	@xvarOpCode,
	@parentFlag,
	@track,
	@trnQty,
	@rdyQty,
	@recQty
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MISLTH
	  WHERE [tranDate] = @tranDate
	   AND [userId] = @userId
	   AND [entry] = @entry
	   AND [detail] = @detail
return @@rowcount

