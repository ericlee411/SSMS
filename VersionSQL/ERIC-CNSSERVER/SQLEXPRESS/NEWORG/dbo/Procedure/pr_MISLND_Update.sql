/****** Object:  Procedure [dbo].[pr_MISLND_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISLND_Update
	@itemId nvarchar (24),
	@lotId nvarchar (40),
	@locId nvarchar (6),
	@qStk numeric (20, 6),
	@qWip numeric (20, 6),
	@qUsed numeric (20, 6),
	@qRcvd numeric (20, 6),
	@qScrp numeric (20, 6),
	@qBuilt numeric (20, 6),
	@rcvdDate nvarchar (8),
	@itemIdOrig nvarchar (24),
	@lotIdOrig nvarchar (40),
	@locIdOrig nvarchar (6),
	@TSCol rowversion output
AS
UPDATE MISLND
SET 	[itemId] = @itemId,
	[lotId] = @lotId,
	[locId] = @locId,
	[qStk] = @qStk,
	[qWip] = @qWip,
	[qUsed] = @qUsed,
	[qRcvd] = @qRcvd,
	[qScrp] = @qScrp,
	[qBuilt] = @qBuilt,
	[rcvdDate] = @rcvdDate
WHERE [itemId] = @itemIdOrig
  AND [lotId] = @lotIdOrig
  AND [locId] = @locIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MISLND
	WHERE [itemId] = @itemId
	  AND [lotId] = @lotId
	  AND [locId] = @locId
return @@rowcount

