/****** Object:  Procedure [dbo].[pr_MISHOPD_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISHOPD_Update
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
	@userIdOrig nvarchar (8),
	@batchIdOrig nvarchar (6),
	@entryOrig int,
	@TSCol rowversion output
AS
UPDATE MISHOPD
SET 	[userId] = @userId,
	[batchId] = @batchId,
	[entry] = @entry,
	[lineNbr] = @lineNbr,
	[tranDate] = @tranDate,
	[wohId] = @wohId,
	[wodId] = @wodId,
	[wodLn] = @wodLn,
	[mohId] = @mohId,
	[opCode] = @opCode,
	[type] = @type,
	[itemId] = @itemId,
	[qty] = @qty,
	[runTime] = @runTime,
	[ovride] = @ovride,
	[comment] = @comment,
	[status] = @status,
	[rdLineNbr] = @rdLineNbr,
	[pohId] = @pohId,
	[pohRev] = @pohRev
WHERE [userId] = @userIdOrig
  AND [batchId] = @batchIdOrig
  AND [entry] = @entryOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MISHOPD
	WHERE [userId] = @userId
	  AND [batchId] = @batchId
	  AND [entry] = @entry
return @@rowcount

