/****** Object:  Procedure [dbo].[pr_MIPIJL_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIPIJL_Update
	@entry int,
	@itemId nvarchar (24),
	@locId nvarchar (6),
	@binId nvarchar (24),
	@type smallint,
	@dateISO nvarchar (8),
	@userId nvarchar (8),
	@recStk numeric (20, 6),
	@recWip numeric (20, 6),
	@stk numeric (20, 6),
	@wip numeric (20, 6),
	@entryOrig int,
	@TSCol rowversion output
AS
UPDATE MIPIJL
SET 	[entry] = @entry,
	[itemId] = @itemId,
	[locId] = @locId,
	[binId] = @binId,
	[type] = @type,
	[dateISO] = @dateISO,
	[userId] = @userId,
	[recStk] = @recStk,
	[recWip] = @recWip,
	[stk] = @stk,
	[wip] = @wip
WHERE [entry] = @entryOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIPIJL
	WHERE [entry] = @entry
return @@rowcount

