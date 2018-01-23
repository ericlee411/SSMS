/****** Object:  Procedure [dbo].[pr_MILOGDX_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MILOGDX_Update
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
	@tranDateOrig nvarchar (8),
	@userIdOrig nvarchar (8),
	@entryOrig int,
	@detailOrig int,
	@dtypeOrig smallint,
	@TSCol rowversion output
AS
UPDATE MILOGDX
SET 	[tranDate] = @tranDate,
	[userId] = @userId,
	[entry] = @entry,
	[detail] = @detail,
	[dtype] = @dtype,
	[type] = @type,
	[itemId] = @itemId,
	[locId] = @locId,
	[recDate] = @recDate,
	[recSeqNo] = @recSeqNo,
	[qty] = @qty,
	[reference] = @reference,
	[acctId] = @acctId,
	[amnt] = @amnt
WHERE [tranDate] = @tranDateOrig
  AND [userId] = @userIdOrig
  AND [entry] = @entryOrig
  AND [detail] = @detailOrig
  AND [dtype] = @dtypeOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MILOGDX
	WHERE [tranDate] = @tranDate
	  AND [userId] = @userId
	  AND [entry] = @entry
	  AND [detail] = @detail
	  AND [dtype] = @dtype
return @@rowcount

