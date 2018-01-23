/****** Object:  Procedure [dbo].[pr_MIMOWR_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIMOWR_Insert
	@wcId nvarchar (24),
	@entry int,
	@type smallint,
	@itemId nvarchar (24),
	@qtyHr numeric (20, 6),
	@qtyUnit numeric (20, 6),
	@comment nvarchar (60),
	@pohId nvarchar (12),
	@pohRev smallint,
	@lineNbr smallint,
	@TSCol rowversion output 
AS
INSERT dbo.MIMOWR
(	[wcId],
	[entry],
	[type],
	[itemId],
	[qtyHr],
	[qtyUnit],
	[comment],
	[pohId],
	[pohRev],
	[lineNbr]
)
VALUES
(
	@wcId,
	@entry,
	@type,
	@itemId,
	@qtyHr,
	@qtyUnit,
	@comment,
	@pohId,
	@pohRev,
	@lineNbr
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIMOWR
	  WHERE [wcId] = @wcId
	   AND [entry] = @entry
return @@rowcount

