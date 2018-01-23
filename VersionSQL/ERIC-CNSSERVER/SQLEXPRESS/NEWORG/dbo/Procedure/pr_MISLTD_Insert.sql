/****** Object:  Procedure [dbo].[pr_MISLTD_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MISLTD_Insert
	@tranDate nvarchar (8),
	@userId nvarchar (8),
	@entry int,
	@detail int,
	@prntLotId nvarchar (40),
	@trnQty numeric (20, 6),
	@recQty numeric (20, 6),
	@itemId nvarchar (24),
	@prntItemId nvarchar (24),
	@TSCol rowversion output 
AS
INSERT dbo.MISLTD
(	[tranDate],
	[userId],
	[entry],
	[detail],
	[prntLotId],
	[trnQty],
	[recQty],
	[itemId],
	[prntItemId]
)
VALUES
(
	@tranDate,
	@userId,
	@entry,
	@detail,
	@prntLotId,
	@trnQty,
	@recQty,
	@itemId,
	@prntItemId
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MISLTD
	  WHERE [tranDate] = @tranDate
	   AND [userId] = @userId
	   AND [entry] = @entry
	   AND [detail] = @detail
	   AND [prntLotId] = @prntLotId
return @@rowcount

