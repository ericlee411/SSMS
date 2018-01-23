/****** Object:  Procedure [dbo].[pr_MIILOCQT_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIILOCQT_Update
	@itemId nvarchar (24),
	@locId nvarchar (6),
	@dateISO nvarchar (8),
	@qStk numeric (20, 6),
	@qWip numeric (20, 6),
	@qRes numeric (20, 6),
	@qOrd numeric (20, 6),
	@cStd numeric (20, 6),
	@cLast numeric (20, 6),
	@cAvg numeric (20, 6),
	@itemIdOrig nvarchar (24),
	@locIdOrig nvarchar (6),
	@dateISOOrig nvarchar (8),
	@TSCol rowversion output
AS
UPDATE MIILOCQT
SET 	[itemId] = @itemId,
	[locId] = @locId,
	[dateISO] = @dateISO,
	[qStk] = @qStk,
	[qWip] = @qWip,
	[qRes] = @qRes,
	[qOrd] = @qOrd,
	[cStd] = @cStd,
	[cLast] = @cLast,
	[cAvg] = @cAvg
WHERE [itemId] = @itemIdOrig
  AND [locId] = @locIdOrig
  AND [dateISO] = @dateISOOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIILOCQT
	WHERE [itemId] = @itemId
	  AND [locId] = @locId
	  AND [dateISO] = @dateISO
return @@rowcount

