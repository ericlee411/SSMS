/****** Object:  Procedure [dbo].[pr_MIMTBH_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIMTBH_Update
	@userId nvarchar (8),
	@batchId nvarchar (6),
	@descr nvarchar (60),
	@createdDt datetime,
	@lstEditDt datetime,
	@status smallint,
	@lstCheckDt datetime,
	@lstPostDt datetime,
	@userIdOrig nvarchar (8),
	@batchIdOrig nvarchar (6),
	@TSCol rowversion output
AS
UPDATE MIMTBH
SET 	[userId] = @userId,
	[batchId] = @batchId,
	[descr] = @descr,
	[createdDt] = @createdDt,
	[lstEditDt] = @lstEditDt,
	[status] = @status,
	[lstCheckDt] = @lstCheckDt,
	[lstPostDt] = @lstPostDt
WHERE [userId] = @userIdOrig
  AND [batchId] = @batchIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIMTBH
	WHERE [userId] = @userId
	  AND [batchId] = @batchId
return @@rowcount

