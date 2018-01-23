/****** Object:  Procedure [dbo].[pr_MISHOPH_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MISHOPH_Insert
	@userId nvarchar (8),
	@batchId nvarchar (6),
	@descr nvarchar (60),
	@createdDt datetime,
	@lstEditDt datetime,
	@lstPostDt datetime,
	@status smallint,
	@pCount smallint,
	@TSCol rowversion output 
AS
INSERT dbo.MISHOPH
(	[userId],
	[batchId],
	[descr],
	[createdDt],
	[lstEditDt],
	[lstPostDt],
	[status],
	[pCount]
)
VALUES
(
	@userId,
	@batchId,
	@descr,
	@createdDt,
	@lstEditDt,
	@lstPostDt,
	@status,
	@pCount
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MISHOPH
	  WHERE [userId] = @userId
	   AND [batchId] = @batchId
return @@rowcount

