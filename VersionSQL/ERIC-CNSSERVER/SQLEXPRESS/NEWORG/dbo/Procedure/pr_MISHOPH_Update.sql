/****** Object:  Procedure [dbo].[pr_MISHOPH_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISHOPH_Update
	@userId nvarchar (8),
	@batchId nvarchar (6),
	@descr nvarchar (60),
	@createdDt datetime,
	@lstEditDt datetime,
	@lstPostDt datetime,
	@status smallint,
	@pCount smallint,
	@userIdOrig nvarchar (8),
	@batchIdOrig nvarchar (6),
	@TSCol rowversion output
AS
UPDATE MISHOPH
SET 	[userId] = @userId,
	[batchId] = @batchId,
	[descr] = @descr,
	[createdDt] = @createdDt,
	[lstEditDt] = @lstEditDt,
	[lstPostDt] = @lstPostDt,
	[status] = @status,
	[pCount] = @pCount
WHERE [userId] = @userIdOrig
  AND [batchId] = @batchIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MISHOPH
	WHERE [userId] = @userId
	  AND [batchId] = @batchId
return @@rowcount

