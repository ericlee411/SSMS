/****** Object:  Procedure [dbo].[pr_MIBINH_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIBINH_Insert
	@itemId nvarchar (24),
	@tranDate nvarchar (8),
	@userId nvarchar (8),
	@entry int,
	@detail int,
	@locId nvarchar (6),
	@type smallint,
	@dType smallint,
	@trnQty numeric (20, 6),
	@recQty numeric (20, 6),
	@xvarPOId nvarchar (12),
	@xvarMOId nvarchar (15),
	@xvarParent nvarchar (24),
	@xvarICId nvarchar (256),
	@xvarToLoc nvarchar (6),
	@TSCol rowversion output 
AS
INSERT dbo.MIBINH
(	[itemId],
	[tranDate],
	[userId],
	[entry],
	[detail],
	[locId],
	[type],
	[dType],
	[trnQty],
	[recQty],
	[xvarPOId],
	[xvarMOId],
	[xvarParent],
	[xvarICId],
	[xvarToLoc]
)
VALUES
(
	@itemId,
	@tranDate,
	@userId,
	@entry,
	@detail,
	@locId,
	@type,
	@dType,
	@trnQty,
	@recQty,
	@xvarPOId,
	@xvarMOId,
	@xvarParent,
	@xvarICId,
	@xvarToLoc
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIBINH
	  WHERE [itemId] = @itemId
	   AND [tranDate] = @tranDate
	   AND [userId] = @userId
	   AND [entry] = @entry
	   AND [detail] = @detail
return @@rowcount

