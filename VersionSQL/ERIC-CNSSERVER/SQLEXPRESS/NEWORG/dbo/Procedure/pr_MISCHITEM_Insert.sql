/****** Object:  Procedure [dbo].[pr_MISCHITEM_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MISCHITEM_Insert
	@schNum int,
	@schLine int,
	@schId nvarchar (6),
	@itemId nvarchar (24),
	@locId nvarchar (6),
	@firstShortQty numeric (20, 6),
	@firstShortDate nvarchar (8),
	@maxShortQty numeric (20, 6),
	@maxShortDate nvarchar (8),
	@maxQty numeric (20, 6),
	@basisQty numeric (20, 6)
AS
INSERT dbo.MISCHITEM
(	[schNum],
	[schLine],
	[schId],
	[itemId],
	[locId],
	[firstShortQty],
	[firstShortDate],
	[maxShortQty],
	[maxShortDate],
	[maxQty],
	[basisQty]
)
VALUES
(
	@schNum,
	@schLine,
	@schId,
	@itemId,
	@locId,
	@firstShortQty,
	@firstShortDate,
	@maxShortQty,
	@maxShortDate,
	@maxQty,
	@basisQty
)
IF @@ROWCOUNT = 1
return @@rowcount

