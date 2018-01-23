/****** Object:  Procedure [dbo].[pr_MISHOPD_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MISHOPD_Insert
	@userId nvarchar (8),
	@batchId nvarchar (6),
	@entry int,
	@lineNbr smallint,
	@tranDate nvarchar (8),
	@wohId nvarchar (12),
	@wodId int,
	@wodLn smallint,
	@mohId nvarchar (15),
	@opCode nvarchar (24),
	@type smallint,
	@itemId nvarchar (24),
	@qty numeric (20, 6),
	@runTime numeric (20, 6),
	@ovride smallint,
	@comment nvarchar (60),
	@status smallint,
	@rdLineNbr smallint,
	@pohId nvarchar (12),
	@pohRev smallint,
	@TSCol rowversion output 
AS
INSERT dbo.MISHOPD
(	[userId],
	[batchId],
	[entry],
	[lineNbr],
	[tranDate],
	[wohId],
	[wodId],
	[wodLn],
	[mohId],
	[opCode],
	[type],
	[itemId],
	[qty],
	[runTime],
	[ovride],
	[comment],
	[status],
	[rdLineNbr],
	[pohId],
	[pohRev]
)
VALUES
(
	@userId,
	@batchId,
	@entry,
	@lineNbr,
	@tranDate,
	@wohId,
	@wodId,
	@wodLn,
	@mohId,
	@opCode,
	@type,
	@itemId,
	@qty,
	@runTime,
	@ovride,
	@comment,
	@status,
	@rdLineNbr,
	@pohId,
	@pohRev
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MISHOPD
	  WHERE [userId] = @userId
	   AND [batchId] = @batchId
	   AND [entry] = @entry
return @@rowcount

