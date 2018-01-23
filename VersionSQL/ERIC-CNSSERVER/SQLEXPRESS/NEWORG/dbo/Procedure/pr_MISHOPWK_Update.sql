/****** Object:  Procedure [dbo].[pr_MISHOPWK_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISHOPWK_Update
	@userId nvarchar (8),
	@uniq int,
	@dispatchISODt nvarchar (23),
	@wohId nvarchar (15),
	@wodId int,
	@mohId nvarchar (15),
	@lineNbr smallint,
	@wcId nvarchar (24),
	@opCode nvarchar (24),
	@itemId nvarchar (24),
	@bomItem nvarchar (24),
	@bomRev nvarchar (6),
	@jobId nvarchar (12),
	@qty numeric (20, 6),
	@availTime numeric (20, 6),
	@optTime numeric (20, 6),
	@runTime numeric (20, 6),
	@setupTime numeric (20, 6),
	@queueTime numeric (20, 6),
	@waitTime numeric (20, 6),
	@endTime numeric (20, 6),
	@openTime numeric (20, 6),
	@status smallint,
	@perLoad numeric (20, 6),
	@userIdOrig nvarchar (8),
	@uniqOrig int
AS
UPDATE MISHOPWK
SET 	[userId] = @userId,
	[uniq] = @uniq,
	[dispatchISODt] = @dispatchISODt,
	[wohId] = @wohId,
	[wodId] = @wodId,
	[mohId] = @mohId,
	[lineNbr] = @lineNbr,
	[wcId] = @wcId,
	[opCode] = @opCode,
	[itemId] = @itemId,
	[bomItem] = @bomItem,
	[bomRev] = @bomRev,
	[jobId] = @jobId,
	[qty] = @qty,
	[availTime] = @availTime,
	[optTime] = @optTime,
	[runTime] = @runTime,
	[setupTime] = @setupTime,
	[queueTime] = @queueTime,
	[waitTime] = @waitTime,
	[endTime] = @endTime,
	[openTime] = @openTime,
	[status] = @status,
	[perLoad] = @perLoad
WHERE [userId] = @userIdOrig
  AND [uniq] = @uniqOrig
IF @@ROWCOUNT = 1
return @@rowcount

