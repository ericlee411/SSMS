/****** Object:  Procedure [dbo].[pr_MIMTBDD_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIMTBDD_Insert
	@userId nvarchar (8),
	@batchId nvarchar (6),
	@entry int,
	@detail int,
	@itemId nvarchar (24),
	@lotId nvarchar (40),
	@lineNbr smallint,
	@recQty numeric (20, 6),
	@TSCol rowversion output 
AS
INSERT dbo.MIMTBDD
(	[userId],
	[batchId],
	[entry],
	[detail],
	[itemId],
	[lotId],
	[lineNbr],
	[recQty]
)
VALUES
(
	@userId,
	@batchId,
	@entry,
	@detail,
	@itemId,
	@lotId,
	@lineNbr,
	@recQty
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIMTBDD
	  WHERE [userId] = @userId
	   AND [batchId] = @batchId
	   AND [entry] = @entry
	   AND [detail] = @detail
return @@rowcount

