/****** Object:  Procedure [dbo].[pr_MIBOMDA_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIBOMDA_Insert
	@bomItem nvarchar (24),
	@bomRev nvarchar (6),
	@bomEntry int,
	@uniquifier int,
	@lineNbr smallint,
	@partId nvarchar (24),
	@altPartId nvarchar (24),
	@TSCol rowversion output 
AS
INSERT dbo.MIBOMDA
(	[bomItem],
	[bomRev],
	[bomEntry],
	[uniquifier],
	[lineNbr],
	[partId],
	[altPartId]
)
VALUES
(
	@bomItem,
	@bomRev,
	@bomEntry,
	@uniquifier,
	@lineNbr,
	@partId,
	@altPartId
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIBOMDA
	  WHERE [bomItem] = @bomItem
	   AND [bomRev] = @bomRev
	   AND [bomEntry] = @bomEntry
	   AND [uniquifier] = @uniquifier
return @@rowcount

