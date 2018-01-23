/****** Object:  Procedure [dbo].[pr_MIADJD_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIADJD_Update
	@userId nvarchar (8),
	@itemId nvarchar (24),
	@stdCst numeric (20, 6),
	@avgCst numeric (20, 6),
	@recCst numeric (20, 6),
	@mult numeric (20, 6),
	@laborSw bit,
	@ovrhdSw bit,
	@status smallint,
	@userIdOrig nvarchar (8),
	@itemIdOrig nvarchar (24),
	@TSCol rowversion output
AS
UPDATE MIADJD
SET 	[userId] = @userId,
	[itemId] = @itemId,
	[stdCst] = @stdCst,
	[avgCst] = @avgCst,
	[recCst] = @recCst,
	[mult] = @mult,
	[laborSw] = @laborSw,
	[ovrhdSw] = @ovrhdSw,
	[status] = @status
WHERE [userId] = @userIdOrig
  AND [itemId] = @itemIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIADJD
	WHERE [userId] = @userId
	  AND [itemId] = @itemId
return @@rowcount

