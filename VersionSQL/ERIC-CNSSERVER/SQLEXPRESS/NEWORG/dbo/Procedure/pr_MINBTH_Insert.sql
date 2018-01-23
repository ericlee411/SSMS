/****** Object:  Procedure [dbo].[pr_MINBTH_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MINBTH_Insert
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
	@TSCol rowversion output 
AS
INSERT dbo.MINBTH
(	[userId],
	[batchId],
	[descr],
	[createDt],
	[lstEditDt],
	[status],
	[lstPostDt],
	[pCount],
	[baseDate],
	[startDate]
)
VALUES
(
	@userId,
	@batchId,
	@descr,
	@createDt,
	@lstEditDt,
	@status,
	@lstPostDt,
	@pCount,
	@baseDate,
	@startDate
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MINBTH
	  WHERE [userId] = @userId
	   AND [batchId] = @batchId
return @@rowcount

