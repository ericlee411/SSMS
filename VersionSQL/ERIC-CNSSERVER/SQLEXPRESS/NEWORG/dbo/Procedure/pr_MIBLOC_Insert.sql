/****** Object:  Procedure [dbo].[pr_MIBLOC_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIBLOC_Insert
	@bomItem nvarchar (24),
	@bomRev nvarchar (6),
	@locId nvarchar (6),
	@qWip numeric (20, 6),
	@qRes numeric (20, 6),
	@TSCol rowversion output 
AS
INSERT dbo.MIBLOC
(	[bomItem],
	[bomRev],
	[locId],
	[qWip],
	[qRes]
)
VALUES
(
	@bomItem,
	@bomRev,
	@locId,
	@qWip,
	@qRes
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIBLOC
	  WHERE [bomItem] = @bomItem
	   AND [bomRev] = @bomRev
	   AND [locId] = @locId
return @@rowcount

