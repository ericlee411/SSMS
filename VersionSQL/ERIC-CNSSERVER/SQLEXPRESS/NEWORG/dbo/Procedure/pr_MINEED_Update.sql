/****** Object:  Procedure [dbo].[pr_MINEED_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MINEED_Update
	@needSource int,
	@needId nvarchar (15),
	@needNo int,
	@initType int,
	@descr nvarchar (60),
	@beginDate nvarchar (8),
	@endDate nvarchar (8),
	@status int,
	@userId nvarchar (8),
	@needSourceOrig int,
	@needIdOrig nvarchar (15),
	@TSCol rowversion output
AS
UPDATE MINEED
SET 	[needSource] = @needSource,
	[needId] = @needId,
	[needNo] = @needNo,
	[initType] = @initType,
	[descr] = @descr,
	[beginDate] = @beginDate,
	[endDate] = @endDate,
	[status] = @status,
	[userId] = @userId
WHERE [needSource] = @needSourceOrig
  AND [needId] = @needIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MINEED
	WHERE [needSource] = @needSource
	  AND [needId] = @needId
return @@rowcount

