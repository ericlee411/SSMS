/****** Object:  Procedure [dbo].[pr_MIICST_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIICST_Update
	@itemId nvarchar (24),
	@transDate nvarchar (8),
	@seqNo int,
	@locId nvarchar (6),
	@type smallint,
	@tranType smallint,
	@suplId nvarchar (12),
	@poId nvarchar (12),
	@poRev smallint,
	@poDtl int,
	@reference nvarchar (60),
	@qRecd numeric (20, 6),
	@cost numeric (20, 6),
	@cLand numeric (20, 6),
	@qUsed numeric (20, 6),
	@qWip numeric (20, 6),
	@itemIdOrig nvarchar (24),
	@transDateOrig nvarchar (8),
	@seqNoOrig int,
	@TSCol rowversion output
AS
UPDATE MIICST
SET 	[itemId] = @itemId,
	[transDate] = @transDate,
	[seqNo] = @seqNo,
	[locId] = @locId,
	[type] = @type,
	[tranType] = @tranType,
	[suplId] = @suplId,
	[poId] = @poId,
	[poRev] = @poRev,
	[poDtl] = @poDtl,
	[reference] = @reference,
	[qRecd] = @qRecd,
	[cost] = @cost,
	[cLand] = @cLand,
	[qUsed] = @qUsed,
	[qWip] = @qWip
WHERE [itemId] = @itemIdOrig
  AND [transDate] = @transDateOrig
  AND [seqNo] = @seqNoOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIICST
	WHERE [itemId] = @itemId
	  AND [transDate] = @transDate
	  AND [seqNo] = @seqNo
return @@rowcount

