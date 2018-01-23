/****** Object:  Procedure [dbo].[pr_MILOGB_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MILOGB_Update
	@tranDate nvarchar (8),
	@userId nvarchar (8),
	@entry int,
	@detail int,
	@locId nvarchar (6),
	@binId nvarchar (24),
	@itemId nvarchar (24),
	@type smallint,
	@qty numeric (20, 6),
	@tranDateOrig nvarchar (8),
	@userIdOrig nvarchar (8),
	@entryOrig int,
	@detailOrig int,
	@locIdOrig nvarchar (6),
	@binIdOrig nvarchar (24),
	@TSCol rowversion output
AS
UPDATE MILOGB
SET 	[tranDate] = @tranDate,
	[userId] = @userId,
	[entry] = @entry,
	[detail] = @detail,
	[locId] = @locId,
	[binId] = @binId,
	[itemId] = @itemId,
	[type] = @type,
	[qty] = @qty
WHERE [tranDate] = @tranDateOrig
  AND [userId] = @userIdOrig
  AND [entry] = @entryOrig
  AND [detail] = @detailOrig
  AND [locId] = @locIdOrig
  AND [binId] = @binIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MILOGB
	WHERE [tranDate] = @tranDate
	  AND [userId] = @userId
	  AND [entry] = @entry
	  AND [detail] = @detail
	  AND [locId] = @locId
	  AND [binId] = @binId
return @@rowcount

