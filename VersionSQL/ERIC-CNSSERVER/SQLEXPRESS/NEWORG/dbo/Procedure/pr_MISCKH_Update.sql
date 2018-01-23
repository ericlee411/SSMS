/****** Object:  Procedure [dbo].[pr_MISCKH_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISCKH_Update
	@userId nvarchar (8),
	@itemId nvarchar (24),
	@descr nvarchar (60),
	@type smallint,
	@status smallint,
	@iqStk numeric (20, 6),
	@iqWip numeric (20, 6),
	@iqRes numeric (20, 6),
	@iqOrd numeric (20, 6),
	@fqStk numeric (20, 6),
	@fqWip numeric (20, 6),
	@fqRes numeric (20, 6),
	@fqOrd numeric (20, 6),
	@iqAvl numeric (20, 6),
	@fqAvl numeric (20, 6),
	@variance numeric (20, 6),
	@userIdOrig nvarchar (8),
	@itemIdOrig nvarchar (24),
	@TSCol rowversion output
AS
UPDATE MISCKH
SET 	[userId] = @userId,
	[itemId] = @itemId,
	[descr] = @descr,
	[type] = @type,
	[status] = @status,
	[iqStk] = @iqStk,
	[iqWip] = @iqWip,
	[iqRes] = @iqRes,
	[iqOrd] = @iqOrd,
	[fqStk] = @fqStk,
	[fqWip] = @fqWip,
	[fqRes] = @fqRes,
	[fqOrd] = @fqOrd,
	[iqAvl] = @iqAvl,
	[fqAvl] = @fqAvl,
	[variance] = @variance
WHERE [userId] = @userIdOrig
  AND [itemId] = @itemIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MISCKH
	WHERE [userId] = @userId
	  AND [itemId] = @itemId
return @@rowcount

