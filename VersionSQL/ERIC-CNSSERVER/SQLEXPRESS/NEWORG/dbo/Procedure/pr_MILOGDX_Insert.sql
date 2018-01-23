/****** Object:  Procedure [dbo].[pr_MILOGDX_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MILOGDX_Insert
	@tranDate nvarchar (8),
	@userId nvarchar (8),
	@entry int,
	@detail int,
	@dtype smallint,
	@type smallint,
	@itemId nvarchar (24),
	@locId nvarchar (6),
	@recDate nvarchar (8),
	@recSeqNo int,
	@qty numeric (20, 6),
	@reference nvarchar (30),
	@acctId nvarchar (45),
	@amnt numeric (20, 6),
	@TSCol rowversion output 
AS
INSERT dbo.MILOGDX
(	[tranDate],
	[userId],
	[entry],
	[detail],
	[dtype],
	[type],
	[itemId],
	[locId],
	[recDate],
	[recSeqNo],
	[qty],
	[reference],
	[acctId],
	[amnt]
)
VALUES
(
	@tranDate,
	@userId,
	@entry,
	@detail,
	@dtype,
	@type,
	@itemId,
	@locId,
	@recDate,
	@recSeqNo,
	@qty,
	@reference,
	@acctId,
	@amnt
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MILOGDX
	  WHERE [tranDate] = @tranDate
	   AND [userId] = @userId
	   AND [entry] = @entry
	   AND [detail] = @detail
	   AND [dtype] = @dtype
return @@rowcount

