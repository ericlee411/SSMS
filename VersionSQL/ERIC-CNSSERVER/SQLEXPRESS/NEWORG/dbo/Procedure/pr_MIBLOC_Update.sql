/****** Object:  Procedure [dbo].[pr_MIBLOC_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIBLOC_Update
	@bomItem nvarchar (24),
	@bomRev nvarchar (6),
	@locId nvarchar (6),
	@qWip numeric (20, 6),
	@qRes numeric (20, 6),
	@bomItemOrig nvarchar (24),
	@bomRevOrig nvarchar (6),
	@locIdOrig nvarchar (6),
	@TSCol rowversion output
AS
UPDATE MIBLOC
SET 	[bomItem] = @bomItem,
	[bomRev] = @bomRev,
	[locId] = @locId,
	[qWip] = @qWip,
	[qRes] = @qRes
WHERE [bomItem] = @bomItemOrig
  AND [bomRev] = @bomRevOrig
  AND [locId] = @locIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIBLOC
	WHERE [bomItem] = @bomItem
	  AND [bomRev] = @bomRev
	  AND [locId] = @locId
return @@rowcount

