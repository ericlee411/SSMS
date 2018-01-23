/****** Object:  Procedure [dbo].[pr_MIPORCVR_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIPORCVR_Update
	@tranDate nvarchar (8),
	@userId nvarchar (8),
	@entry int,
	@tranDateOrig nvarchar (8),
	@userIdOrig nvarchar (8),
	@entryOrig int,
	@TSCol rowversion output
AS
UPDATE MIPORCVR
SET 	[tranDate] = @tranDate,
	[userId] = @userId,
	[entry] = @entry
WHERE [tranDate] = @tranDateOrig
  AND [userId] = @userIdOrig
  AND [entry] = @entryOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIPORCVR
	WHERE [tranDate] = @tranDate
	  AND [userId] = @userId
	  AND [entry] = @entry
return @@rowcount

