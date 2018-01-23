/****** Object:  Procedure [dbo].[pr_MIROLL_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIROLL_Update
	@userId nvarchar (8),
	@entry int,
	@itemId nvarchar (24),
	@oldStd numeric (20, 6),
	@newStd numeric (20, 6),
	@oldAvg numeric (20, 6),
	@newAvg numeric (20, 6),
	@userIdOrig nvarchar (8),
	@entryOrig int,
	@TSCol rowversion output
AS
UPDATE MIROLL
SET 	[userId] = @userId,
	[entry] = @entry,
	[itemId] = @itemId,
	[oldStd] = @oldStd,
	[newStd] = @newStd,
	[oldAvg] = @oldAvg,
	[newAvg] = @newAvg
WHERE [userId] = @userIdOrig
  AND [entry] = @entryOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIROLL
	WHERE [userId] = @userId
	  AND [entry] = @entry
return @@rowcount

