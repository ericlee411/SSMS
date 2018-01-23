/****** Object:  Procedure [dbo].[pr_MIBOMD_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIBOMD_Insert
	@bomItem nvarchar (24),
	@bomRev nvarchar (6),
	@bomEntry int,
	@lineNbr smallint,
	@dType smallint,
	@partId nvarchar (24),
	@revId nvarchar (6),
	@qty numeric (20, 6),
	@lead smallint,
	@cmnt nvarchar (60),
	@opCode nvarchar (24),
	@fldXml text,
	@srcLoc nvarchar (6),
	@TSCol rowversion output 
AS
INSERT dbo.MIBOMD
(	[bomItem],
	[bomRev],
	[bomEntry],
	[lineNbr],
	[dType],
	[partId],
	[revId],
	[qty],
	[lead],
	[cmnt],
	[opCode],
	[fldXml],
	[srcLoc]
)
VALUES
(
	@bomItem,
	@bomRev,
	@bomEntry,
	@lineNbr,
	@dType,
	@partId,
	@revId,
	@qty,
	@lead,
	@cmnt,
	@opCode,
	@fldXml,
	@srcLoc
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIBOMD
	  WHERE [bomItem] = @bomItem
	   AND [bomRev] = @bomRev
	   AND [bomEntry] = @bomEntry
return @@rowcount

