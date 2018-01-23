/****** Object:  Procedure [dbo].[pr_MILOGB_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MILOGB_Insert
	@tranDate nvarchar (8),
	@userId nvarchar (8),
	@entry int,
	@detail int,
	@locId nvarchar (6),
	@binId nvarchar (24),
	@itemId nvarchar (24),
	@type smallint,
	@qty numeric (20, 6),
	@TSCol rowversion output 
AS
INSERT dbo.MILOGB
(	[tranDate],
	[userId],
	[entry],
	[detail],
	[locId],
	[binId],
	[itemId],
	[type],
	[qty]
)
VALUES
(
	@tranDate,
	@userId,
	@entry,
	@detail,
	@locId,
	@binId,
	@itemId,
	@type,
	@qty
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MILOGB
	  WHERE [tranDate] = @tranDate
	   AND [userId] = @userId
	   AND [entry] = @entry
	   AND [detail] = @detail
	   AND [locId] = @locId
	   AND [binId] = @binId
return @@rowcount

