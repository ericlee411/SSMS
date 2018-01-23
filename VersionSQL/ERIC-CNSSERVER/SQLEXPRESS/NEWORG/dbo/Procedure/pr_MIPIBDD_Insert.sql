/****** Object:  Procedure [dbo].[pr_MIPIBDD_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIPIBDD_Insert
	@userId nvarchar (8),
	@batchId nvarchar (6),
	@bType smallint,
	@entry int,
	@detail int,
	@itemId nvarchar (24),
	@locId nvarchar (6),
	@binId nvarchar (24),
	@lotId nvarchar (40),
	@qty numeric (20, 6),
	@wip numeric (20, 6),
	@TSCol rowversion output 
AS
INSERT dbo.MIPIBDD
(	[userId],
	[batchId],
	[bType],
	[entry],
	[detail],
	[itemId],
	[locId],
	[binId],
	[lotId],
	[qty],
	[wip]
)
VALUES
(
	@userId,
	@batchId,
	@bType,
	@entry,
	@detail,
	@itemId,
	@locId,
	@binId,
	@lotId,
	@qty,
	@wip
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIPIBDD
	  WHERE [userId] = @userId
	   AND [batchId] = @batchId
	   AND [bType] = @bType
	   AND [entry] = @entry
	   AND [detail] = @detail
return @@rowcount

