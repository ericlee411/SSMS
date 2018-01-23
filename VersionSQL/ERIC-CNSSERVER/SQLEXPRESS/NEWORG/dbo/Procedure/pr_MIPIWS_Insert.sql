/****** Object:  Procedure [dbo].[pr_MIPIWS_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIPIWS_Insert
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
	@TSCol rowversion output 
AS
INSERT dbo.MIPIWS
(	[userId],
	[sortField],
	[itemId],
	[binId],
	[seqNo],
	[locId],
	[pick],
	[recQty],
	[recWip],
	[status]
)
VALUES
(
	@userId,
	@sortField,
	@itemId,
	@binId,
	@seqNo,
	@locId,
	@pick,
	@recQty,
	@recWip,
	@status
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIPIWS
	  WHERE [userId] = @userId
	   AND [sortField] = @sortField
	   AND [itemId] = @itemId
	   AND [binId] = @binId
	   AND [seqNo] = @seqNo
return @@rowcount

