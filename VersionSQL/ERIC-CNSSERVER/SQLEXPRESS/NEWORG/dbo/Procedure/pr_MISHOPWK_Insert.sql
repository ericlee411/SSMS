/****** Object:  Procedure [dbo].[pr_MISHOPWK_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MISHOPWK_Insert
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
	@perLoad numeric (20, 6)
AS
INSERT dbo.MISHOPWK
(	[userId],
	[uniq],
	[dispatchISODt],
	[wohId],
	[wodId],
	[mohId],
	[lineNbr],
	[wcId],
	[opCode],
	[itemId],
	[bomItem],
	[bomRev],
	[jobId],
	[qty],
	[availTime],
	[optTime],
	[runTime],
	[setupTime],
	[queueTime],
	[waitTime],
	[endTime],
	[openTime],
	[status],
	[perLoad]
)
VALUES
(
	@userId,
	@uniq,
	@dispatchISODt,
	@wohId,
	@wodId,
	@mohId,
	@lineNbr,
	@wcId,
	@opCode,
	@itemId,
	@bomItem,
	@bomRev,
	@jobId,
	@qty,
	@availTime,
	@optTime,
	@runTime,
	@setupTime,
	@queueTime,
	@waitTime,
	@endTime,
	@openTime,
	@status,
	@perLoad
)
IF @@ROWCOUNT = 1
return @@rowcount

