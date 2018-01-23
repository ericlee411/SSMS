/****** Object:  Procedure [dbo].[pr_MILOGD_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MILOGD_Update
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
	@tranDateOrig nvarchar (8),
	@userIdOrig nvarchar (8),
	@entryOrig int,
	@detailOrig int,
	@TSCol rowversion output
AS
UPDATE MILOGD
SET 	[tranDate] = @tranDate,
	[userId] = @userId,
	[entry] = @entry,
	[detail] = @detail,
	[type] = @type,
	[itemId] = @itemId,
	[locId] = @locId,
	[recDate] = @recDate,
	[recSeqNo] = @recSeqNo,
	[qty] = @qty,
	[reference] = @reference,
	[crAcctId] = @crAcctId,
	[crAmnt] = @crAmnt,
	[drAcctId] = @drAcctId,
	[drAmnt] = @drAmnt,
	[adjAcctId] = @adjAcctId,
	[xvarBillId] = @xvarBillId
WHERE [tranDate] = @tranDateOrig
  AND [userId] = @userIdOrig
  AND [entry] = @entryOrig
  AND [detail] = @detailOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MILOGD
	WHERE [tranDate] = @tranDate
	  AND [userId] = @userId
	  AND [entry] = @entry
	  AND [detail] = @detail
return @@rowcount

