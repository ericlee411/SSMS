/****** Object:  Procedure [dbo].[pr_MIPIBH_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIPIBH_Insert
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
	@TSCol rowversion output 
AS
INSERT dbo.MIPIBH
(	[userId],
	[batchId],
	[bType],
	[descr],
	[createdDt],
	[lstEditDt],
	[status],
	[lstCheckDt],
	[lstPostDt],
	[selected],
	[showRecorded]
)
VALUES
(
	@userId,
	@batchId,
	@bType,
	@descr,
	@createdDt,
	@lstEditDt,
	@status,
	@lstCheckDt,
	@lstPostDt,
	@selected,
	@showRecorded
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIPIBH
	  WHERE [userId] = @userId
	   AND [batchId] = @batchId
	   AND [bType] = @bType
return @@rowcount

