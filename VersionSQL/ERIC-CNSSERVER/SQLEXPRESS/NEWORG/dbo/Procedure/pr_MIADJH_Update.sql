/****** Object:  Procedure [dbo].[pr_MIADJH_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIADJH_Update
	@userId nvarchar (8),
	@descr nvarchar (60),
	@createdDt datetime,
	@lstEditDt datetime,
	@lstPostDt datetime,
	@status smallint,
	@userIdOrig nvarchar (8),
	@TSCol rowversion output
AS
UPDATE MIADJH
SET 	[userId] = @userId,
	[descr] = @descr,
	[createdDt] = @createdDt,
	[lstEditDt] = @lstEditDt,
	[lstPostDt] = @lstPostDt,
	[status] = @status
WHERE [userId] = @userIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIADJH
	WHERE [userId] = @userId
return @@rowcount

