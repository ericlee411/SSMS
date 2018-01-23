/****** Object:  Procedure [dbo].[pr_MINBTH_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MINBTH_Update
	@userId nvarchar (8),
	@batchId nvarchar (6),
	@descr nvarchar (60),
	@createDt datetime,
	@lstEditDt datetime,
	@status smallint,
	@lstPostDt datetime,
	@pCount smallint,
	@baseDate nvarchar (8),
	@startDate nvarchar (8),
	@userIdOrig nvarchar (8),
	@batchIdOrig nvarchar (6),
	@TSCol rowversion output
AS
UPDATE MINBTH
SET 	[userId] = @userId,
	[batchId] = @batchId,
	[descr] = @descr,
	[createDt] = @createDt,
	[lstEditDt] = @lstEditDt,
	[status] = @status,
	[lstPostDt] = @lstPostDt,
	[pCount] = @pCount,
	[baseDate] = @baseDate,
	[startDate] = @startDate
WHERE [userId] = @userIdOrig
  AND [batchId] = @batchIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MINBTH
	WHERE [userId] = @userId
	  AND [batchId] = @batchId
return @@rowcount

