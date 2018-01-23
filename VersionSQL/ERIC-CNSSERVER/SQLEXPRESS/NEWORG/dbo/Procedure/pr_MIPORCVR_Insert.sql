/****** Object:  Procedure [dbo].[pr_MIPORCVR_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIPORCVR_Insert
	@tranDate nvarchar (8),
	@userId nvarchar (8),
	@entry int,
	@TSCol rowversion output 
AS
INSERT dbo.MIPORCVR
(	[tranDate],
	[userId],
	[entry]
)
VALUES
(
	@tranDate,
	@userId,
	@entry
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIPORCVR
	  WHERE [tranDate] = @tranDate
	   AND [userId] = @userId
	   AND [entry] = @entry
return @@rowcount

