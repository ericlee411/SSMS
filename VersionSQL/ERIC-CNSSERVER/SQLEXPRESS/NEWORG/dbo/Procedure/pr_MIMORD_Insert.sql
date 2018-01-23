/****** Object:  Procedure [dbo].[pr_MIMORD_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIMORD_Insert
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
	@TSCol rowversion output 
AS
INSERT dbo.MIMORD
(	[mohId],
	[opCode],
	[wcId],
	[toolId],
	[lineNbr],
	[batchSize],
	[cycleTime],
	[setupTime],
	[preopTime],
	[postTime],
	[cmnt],
	[overlap],
	[milestone],
	[startQty],
	[compQty],
	[startISODt],
	[runTime],
	[stdMatCost],
	[stdLabCost],
	[stdOvrhdCost],
	[actMatCost],
	[actLabCost],
	[actOvrhdCost],
	[ctlGroupId],
	[pohId],
	[pohRev],
	[fldXml],
	[cumCost]
)
VALUES
(
	@mohId,
	@opCode,
	@wcId,
	@toolId,
	@lineNbr,
	@batchSize,
	@cycleTime,
	@setupTime,
	@preopTime,
	@postTime,
	@cmnt,
	@overlap,
	@milestone,
	@startQty,
	@compQty,
	@startISODt,
	@runTime,
	@stdMatCost,
	@stdLabCost,
	@stdOvrhdCost,
	@actMatCost,
	@actLabCost,
	@actOvrhdCost,
	@ctlGroupId,
	@pohId,
	@pohRev,
	@fldXml,
	@cumCost
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIMORD
	  WHERE [mohId] = @mohId
	   AND [opCode] = @opCode
return @@rowcount

