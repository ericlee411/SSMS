/****** Object:  Procedure [dbo].[pr_MISLNO_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISLNO_Update
	@itemId nvarchar (24),
	@lotId nvarchar (40),
	@seqNo int,
	@itemIdOrig nvarchar (24),
	@TSCol rowversion output
AS
UPDATE MISLNO
SET 	[itemId] = @itemId,
	[lotId] = @lotId,
	[seqNo] = @seqNo
WHERE [itemId] = @itemIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MISLNO
	WHERE [itemId] = @itemId
return @@rowcount

