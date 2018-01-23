/****** Object:  Procedure [dbo].[pr_MINEEDD_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MINEEDD_Update
	@needNo int,
	@uniqItemLoc int,
	@uniqDay int,
	@entry int,
	@needSource int,
	@needId nvarchar (15),
	@itemId nvarchar (24),
	@locId nvarchar (6),
	@reqISODate nvarchar (8),
	@pooISODate nvarchar (8),
	@wooISODate nvarchar (8),
	@mooISODate nvarchar (8),
	@popQty numeric (20, 6),
	@wopQty numeric (20, 6),
	@mopQty numeric (20, 6),
	@posQty numeric (20, 6),
	@wosQty numeric (20, 6),
	@mosQty numeric (20, 6),
	@shortQty numeric (20, 6),
	@excess numeric (20, 6),
	@revId nvarchar (6),
	@SOId nvarchar (256),
	@Detail int,
	@customer nvarchar (256),
	@mohId nvarchar (15),
	@momdId int,
	@needNoOrig int,
	@uniqItemLocOrig int,
	@uniqDayOrig int,
	@entryOrig int,
	@TSCol rowversion output
AS
UPDATE MINEEDD
SET 	[needNo] = @needNo,
	[uniqItemLoc] = @uniqItemLoc,
	[uniqDay] = @uniqDay,
	[entry] = @entry,
	[needSource] = @needSource,
	[needId] = @needId,
	[itemId] = @itemId,
	[locId] = @locId,
	[reqISODate] = @reqISODate,
	[pooISODate] = @pooISODate,
	[wooISODate] = @wooISODate,
	[mooISODate] = @mooISODate,
	[popQty] = @popQty,
	[wopQty] = @wopQty,
	[mopQty] = @mopQty,
	[posQty] = @posQty,
	[wosQty] = @wosQty,
	[mosQty] = @mosQty,
	[shortQty] = @shortQty,
	[excess] = @excess,
	[revId] = @revId,
	[SOId] = @SOId,
	[Detail] = @Detail,
	[customer] = @customer,
	[mohId] = @mohId,
	[momdId] = @momdId
WHERE [needNo] = @needNoOrig
  AND [uniqItemLoc] = @uniqItemLocOrig
  AND [uniqDay] = @uniqDayOrig
  AND [entry] = @entryOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MINEEDD
	WHERE [needNo] = @needNo
	  AND [uniqItemLoc] = @uniqItemLoc
	  AND [uniqDay] = @uniqDay
	  AND [entry] = @entry
return @@rowcount

