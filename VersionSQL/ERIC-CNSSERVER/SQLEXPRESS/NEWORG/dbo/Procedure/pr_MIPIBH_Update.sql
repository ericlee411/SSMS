/****** Object:  Procedure [dbo].[pr_MIPIBH_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIPIBH_Update
	@userId nvarchar (8),
	@batchId nvarchar (6),
	@bType smallint,
	@descr nvarchar (60),
	@createdDt datetime,
	@lstEditDt datetime,
	@status smallint,
	@lstCheckDt datetime,
	@lstPostDt datetime,
	@selected bit,
	@showRecorded bit,
	@userIdOrig nvarchar (8),
	@batchIdOrig nvarchar (6),
	@bTypeOrig smallint,
	@TSCol rowversion output
AS
UPDATE MIPIBH
SET 	[userId] = @userId,
	[batchId] = @batchId,
	[bType] = @bType,
	[descr] = @descr,
	[createdDt] = @createdDt,
	[lstEditDt] = @lstEditDt,
	[status] = @status,
	[lstCheckDt] = @lstCheckDt,
	[lstPostDt] = @lstPostDt,
	[selected] = @selected,
	[showRecorded] = @showRecorded
WHERE [userId] = @userIdOrig
  AND [batchId] = @batchIdOrig
  AND [bType] = @bTypeOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIPIBH
	WHERE [userId] = @userId
	  AND [batchId] = @batchId
	  AND [bType] = @bType
return @@rowcount

