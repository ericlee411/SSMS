/****** Object:  Procedure [dbo].[pr_MIPIBD_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIPIBD_Update
	@userId nvarchar (8),
	@batchId nvarchar (6),
	@bType smallint,
	@entry int,
	@lineNbr int,
	@itemId nvarchar (24),
	@locId nvarchar (6),
	@type smallint,
	@binId nvarchar (24),
	@dateISO nvarchar (8),
	@qty numeric (20, 6),
	@wip numeric (20, 6),
	@recQty numeric (20, 6),
	@recWip numeric (20, 6),
	@ticket nvarchar (30),
	@comment nvarchar (60),
	@status smallint,
	@errId nvarchar (8),
	@userIdOrig nvarchar (8),
	@batchIdOrig nvarchar (6),
	@bTypeOrig smallint,
	@entryOrig int,
	@TSCol rowversion output
AS
UPDATE MIPIBD
SET 	[userId] = @userId,
	[batchId] = @batchId,
	[bType] = @bType,
	[entry] = @entry,
	[lineNbr] = @lineNbr,
	[itemId] = @itemId,
	[locId] = @locId,
	[type] = @type,
	[binId] = @binId,
	[dateISO] = @dateISO,
	[qty] = @qty,
	[wip] = @wip,
	[recQty] = @recQty,
	[recWip] = @recWip,
	[ticket] = @ticket,
	[comment] = @comment,
	[status] = @status,
	[errId] = @errId
WHERE [userId] = @userIdOrig
  AND [batchId] = @batchIdOrig
  AND [bType] = @bTypeOrig
  AND [entry] = @entryOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIPIBD
	WHERE [userId] = @userId
	  AND [batchId] = @batchId
	  AND [bType] = @bType
	  AND [entry] = @entry
return @@rowcount

