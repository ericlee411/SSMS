/****** Object:  Procedure [dbo].[pr_MIADJD_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIADJD_Insert
	@userId nvarchar (8),
	@itemId nvarchar (24),
	@stdCst numeric (20, 6),
	@avgCst numeric (20, 6),
	@recCst numeric (20, 6),
	@mult numeric (20, 6),
	@laborSw bit,
	@ovrhdSw bit,
	@status smallint,
	@TSCol rowversion output 
AS
INSERT dbo.MIADJD
(	[userId],
	[itemId],
	[stdCst],
	[avgCst],
	[recCst],
	[mult],
	[laborSw],
	[ovrhdSw],
	[status]
)
VALUES
(
	@userId,
	@itemId,
	@stdCst,
	@avgCst,
	@recCst,
	@mult,
	@laborSw,
	@ovrhdSw,
	@status
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIADJD
	  WHERE [userId] = @userId
	   AND [itemId] = @itemId
return @@rowcount

