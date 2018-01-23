/****** Object:  Procedure [dbo].[pr_MIMTBH_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIMTBH_Insert
	@userId nvarchar (8),
	@batchId nvarchar (6),
	@descr nvarchar (60),
	@createdDt datetime,
	@lstEditDt datetime,
	@status smallint,
	@lstCheckDt datetime,
	@lstPostDt datetime,
	@TSCol rowversion output 
AS
INSERT dbo.MIMTBH
(	[userId],
	[batchId],
	[descr],
	[createdDt],
	[lstEditDt],
	[status],
	[lstCheckDt],
	[lstPostDt]
)
VALUES
(
	@userId,
	@batchId,
	@descr,
	@createdDt,
	@lstEditDt,
	@status,
	@lstCheckDt,
	@lstPostDt
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIMTBH
	  WHERE [userId] = @userId
	   AND [batchId] = @batchId
return @@rowcount

