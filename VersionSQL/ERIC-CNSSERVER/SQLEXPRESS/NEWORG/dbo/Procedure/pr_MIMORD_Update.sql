/****** Object:  Procedure [dbo].[pr_MIMORD_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIMORD_Update
	@mohId nvarchar (15),
	@opCode nvarchar (24),
	@wcId nvarchar (24),
	@toolId nvarchar (12),
	@lineNbr smallint,
	@batchSize numeric (20, 6),
	@cycleTime numeric (20, 6),
	@setupTime numeric (20, 6),
	@preopTime numeric (20, 6),
	@postTime numeric (20, 6),
	@cmnt nvarchar (60),
	@overlap bit,
	@milestone bit,
	@startQty numeric (20, 6),
	@compQty numeric (20, 6),
	@startISODt nvarchar (23),
	@runTime numeric (20, 6),
	@stdMatCost numeric (20, 6),
	@stdLabCost numeric (20, 6),
	@stdOvrhdCost numeric (20, 6),
	@actMatCost numeric (20, 6),
	@actLabCost numeric (20, 6),
	@actOvrhdCost numeric (20, 6),
	@ctlGroupId nvarchar (8),
	@pohId nvarchar (12),
	@pohRev smallint,
	@fldXml text,
	@cumCost numeric (20, 6),
	@mohIdOrig nvarchar (15),
	@opCodeOrig nvarchar (24),
	@TSCol rowversion output
AS
UPDATE MIMORD
SET 	[mohId] = @mohId,
	[opCode] = @opCode,
	[wcId] = @wcId,
	[toolId] = @toolId,
	[lineNbr] = @lineNbr,
	[batchSize] = @batchSize,
	[cycleTime] = @cycleTime,
	[setupTime] = @setupTime,
	[preopTime] = @preopTime,
	[postTime] = @postTime,
	[cmnt] = @cmnt,
	[overlap] = @overlap,
	[milestone] = @milestone,
	[startQty] = @startQty,
	[compQty] = @compQty,
	[startISODt] = @startISODt,
	[runTime] = @runTime,
	[stdMatCost] = @stdMatCost,
	[stdLabCost] = @stdLabCost,
	[stdOvrhdCost] = @stdOvrhdCost,
	[actMatCost] = @actMatCost,
	[actLabCost] = @actLabCost,
	[actOvrhdCost] = @actOvrhdCost,
	[ctlGroupId] = @ctlGroupId,
	[pohId] = @pohId,
	[pohRev] = @pohRev,
	[fldXml] = @fldXml,
	[cumCost] = @cumCost
WHERE [mohId] = @mohIdOrig
  AND [opCode] = @opCodeOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIMORD
	WHERE [mohId] = @mohId
	  AND [opCode] = @opCode
return @@rowcount

