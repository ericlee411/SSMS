/****** Object:  Procedure [dbo].[pr_MIBOMD_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIBOMD_Update
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
	@bomItemOrig nvarchar (24),
	@bomRevOrig nvarchar (6),
	@bomEntryOrig int,
	@TSCol rowversion output
AS
UPDATE MIBOMD
SET 	[bomItem] = @bomItem,
	[bomRev] = @bomRev,
	[bomEntry] = @bomEntry,
	[lineNbr] = @lineNbr,
	[dType] = @dType,
	[partId] = @partId,
	[revId] = @revId,
	[qty] = @qty,
	[lead] = @lead,
	[cmnt] = @cmnt,
	[opCode] = @opCode,
	[fldXml] = @fldXml,
	[srcLoc] = @srcLoc
WHERE [bomItem] = @bomItemOrig
  AND [bomRev] = @bomRevOrig
  AND [bomEntry] = @bomEntryOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIBOMD
	WHERE [bomItem] = @bomItem
	  AND [bomRev] = @bomRev
	  AND [bomEntry] = @bomEntry
return @@rowcount

