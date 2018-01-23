/****** Object:  Procedure [dbo].[pr_MINEED_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MINEED_Insert
	@needSource int,
	@needId nvarchar (15),
	@needNo int,
	@initType int,
	@descr nvarchar (60),
	@beginDate nvarchar (8),
	@endDate nvarchar (8),
	@status int,
	@userId nvarchar (8),
	@TSCol rowversion output 
AS
INSERT dbo.MINEED
(	[needSource],
	[needId],
	[needNo],
	[initType],
	[descr],
	[beginDate],
	[endDate],
	[status],
	[userId]
)
VALUES
(
	@needSource,
	@needId,
	@needNo,
	@initType,
	@descr,
	@beginDate,
	@endDate,
	@status,
	@userId
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MINEED
	  WHERE [needSource] = @needSource
	   AND [needId] = @needId
return @@rowcount

