/****** Object:  Procedure [dbo].[pr_MIBORD_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIBORD_Insert
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
	@TSCol rowversion output 
AS
INSERT dbo.MIBORD
(	[bomItem],
	[bomRev],
	[opCode],
	[lineNbr],
	[wcId],
	[toolId],
	[batchSize],
	[cycleTime],
	[setupTime],
	[preopTime],
	[postTime],
	[cmnt],
	[overlap],
	[milestone],
	[ctlGroupId],
	[fldXml]
)
VALUES
(
	@bomItem,
	@bomRev,
	@opCode,
	@lineNbr,
	@wcId,
	@toolId,
	@batchSize,
	@cycleTime,
	@setupTime,
	@preopTime,
	@postTime,
	@cmnt,
	@overlap,
	@milestone,
	@ctlGroupId,
	@fldXml
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIBORD
	  WHERE [bomItem] = @bomItem
	   AND [bomRev] = @bomRev
	   AND [opCode] = @opCode
return @@rowcount

