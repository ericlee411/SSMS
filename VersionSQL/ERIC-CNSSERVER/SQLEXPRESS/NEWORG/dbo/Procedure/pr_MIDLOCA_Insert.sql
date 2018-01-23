/****** Object:  Procedure [dbo].[pr_MIDLOCA_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIDLOCA_Insert
	@locId nvarchar (6),
	@entry int,
	@lineNbr smallint,
	@altLocId nvarchar (6),
	@TSCol rowversion output 
AS
INSERT dbo.MIDLOCA
(	[locId],
	[entry],
	[lineNbr],
	[altLocId]
)
VALUES
(
	@locId,
	@entry,
	@lineNbr,
	@altLocId
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIDLOCA
	  WHERE [locId] = @locId
	   AND [entry] = @entry
return @@rowcount

