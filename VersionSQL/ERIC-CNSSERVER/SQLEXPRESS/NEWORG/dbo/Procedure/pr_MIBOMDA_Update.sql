/****** Object:  Procedure [dbo].[pr_MIBOMDA_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIBOMDA_Update
	@bomItem nvarchar (24),
	@bomRev nvarchar (6),
	@bomEntry int,
	@uniquifier int,
	@lineNbr smallint,
	@partId nvarchar (24),
	@altPartId nvarchar (24),
	@bomItemOrig nvarchar (24),
	@bomRevOrig nvarchar (6),
	@bomEntryOrig int,
	@uniquifierOrig int,
	@TSCol rowversion output
AS
UPDATE MIBOMDA
SET 	[bomItem] = @bomItem,
	[bomRev] = @bomRev,
	[bomEntry] = @bomEntry,
	[uniquifier] = @uniquifier,
	[lineNbr] = @lineNbr,
	[partId] = @partId,
	[altPartId] = @altPartId
WHERE [bomItem] = @bomItemOrig
  AND [bomRev] = @bomRevOrig
  AND [bomEntry] = @bomEntryOrig
  AND [uniquifier] = @uniquifierOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIBOMDA
	WHERE [bomItem] = @bomItem
	  AND [bomRev] = @bomRev
	  AND [bomEntry] = @bomEntry
	  AND [uniquifier] = @uniquifier
return @@rowcount

