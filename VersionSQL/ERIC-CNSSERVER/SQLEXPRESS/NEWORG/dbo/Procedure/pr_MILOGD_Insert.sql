/****** Object:  Procedure [dbo].[pr_MILOGD_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MILOGD_Insert
	@tranDate nvarchar (8),
	@userId nvarchar (8),
	@entry int,
	@detail int,
	@type smallint,
	@itemId nvarchar (24),
	@locId nvarchar (6),
	@recDate nvarchar (8),
	@recSeqNo int,
	@qty numeric (20, 6),
	@reference nvarchar (30),
	@crAcctId nvarchar (45),
	@crAmnt numeric (20, 6),
	@drAcctId nvarchar (45),
	@drAmnt numeric (20, 6),
	@adjAcctId nvarchar (45),
	@xvarBillId nvarchar (256),
	@TSCol rowversion output 
AS
INSERT dbo.MILOGD
(	[tranDate],
	[userId],
	[entry],
	[detail],
	[type],
	[itemId],
	[locId],
	[recDate],
	[recSeqNo],
	[qty],
	[reference],
	[crAcctId],
	[crAmnt],
	[drAcctId],
	[drAmnt],
	[adjAcctId],
	[xvarBillId]
)
VALUES
(
	@tranDate,
	@userId,
	@entry,
	@detail,
	@type,
	@itemId,
	@locId,
	@recDate,
	@recSeqNo,
	@qty,
	@reference,
	@crAcctId,
	@crAmnt,
	@drAcctId,
	@drAmnt,
	@adjAcctId,
	@xvarBillId
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MILOGD
	  WHERE [tranDate] = @tranDate
	   AND [userId] = @userId
	   AND [entry] = @entry
	   AND [detail] = @detail
return @@rowcount

