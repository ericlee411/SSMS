/****** Object:  Procedure [dbo].[pr_MIBORD_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIBORD_Update
	@bomItem nvarchar (24),
	@bomRev nvarchar (6),
	@opCode nvarchar (24),
	@lineNbr smallint,
	@wcId nvarchar (24),
	@toolId nvarchar (12),
	@batchSize numeric (20, 6),
	@cycleTime numeric (20, 6),
	@setupTime numeric (20, 6),
	@preopTime numeric (20, 6),
	@postTime numeric (20, 6),
	@cmnt nvarchar (60),
	@overlap bit,
	@milestone bit,
	@ctlGroupId nvarchar (8),
	@fldXml text,
	@bomItemOrig nvarchar (24),
	@bomRevOrig nvarchar (6),
	@opCodeOrig nvarchar (24),
	@TSCol rowversion output
AS
UPDATE MIBORD
SET 	[bomItem] = @bomItem,
	[bomRev] = @bomRev,
	[opCode] = @opCode,
	[lineNbr] = @lineNbr,
	[wcId] = @wcId,
	[toolId] = @toolId,
	[batchSize] = @batchSize,
	[cycleTime] = @cycleTime,
	[setupTime] = @setupTime,
	[preopTime] = @preopTime,
	[postTime] = @postTime,
	[cmnt] = @cmnt,
	[overlap] = @overlap,
	[milestone] = @milestone,
	[ctlGroupId] = @ctlGroupId,
	[fldXml] = @fldXml
WHERE [bomItem] = @bomItemOrig
  AND [bomRev] = @bomRevOrig
  AND [opCode] = @opCodeOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIBORD
	WHERE [bomItem] = @bomItem
	  AND [bomRev] = @bomRev
	  AND [opCode] = @opCode
return @@rowcount

