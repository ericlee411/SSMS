/****** Object:  Procedure [dbo].[pr_MIPIWS_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIPIWS_Update
	@userId nvarchar (8),
	@sortField nvarchar (30),
	@itemId nvarchar (24),
	@binId nvarchar (24),
	@seqNo nvarchar (3),
	@locId nvarchar (6),
	@pick nvarchar (24),
	@recQty numeric (20, 6),
	@recWip numeric (20, 6),
	@status smallint,
	@userIdOrig nvarchar (8),
	@sortFieldOrig nvarchar (30),
	@itemIdOrig nvarchar (24),
	@binIdOrig nvarchar (24),
	@seqNoOrig nvarchar (3),
	@TSCol rowversion output
AS
UPDATE MIPIWS
SET 	[userId] = @userId,
	[sortField] = @sortField,
	[itemId] = @itemId,
	[binId] = @binId,
	[seqNo] = @seqNo,
	[locId] = @locId,
	[pick] = @pick,
	[recQty] = @recQty,
	[recWip] = @recWip,
	[status] = @status
WHERE [userId] = @userIdOrig
  AND [sortField] = @sortFieldOrig
  AND [itemId] = @itemIdOrig
  AND [binId] = @binIdOrig
  AND [seqNo] = @seqNoOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIPIWS
	WHERE [userId] = @userId
	  AND [sortField] = @sortField
	  AND [itemId] = @itemId
	  AND [binId] = @binId
	  AND [seqNo] = @seqNo
return @@rowcount

