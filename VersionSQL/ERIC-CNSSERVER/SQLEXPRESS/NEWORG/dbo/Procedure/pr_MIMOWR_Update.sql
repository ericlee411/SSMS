/****** Object:  Procedure [dbo].[pr_MIMOWR_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIMOWR_Update
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
	@wcIdOrig nvarchar (24),
	@entryOrig int,
	@TSCol rowversion output
AS
UPDATE MIMOWR
SET 	[wcId] = @wcId,
	[entry] = @entry,
	[type] = @type,
	[itemId] = @itemId,
	[qtyHr] = @qtyHr,
	[qtyUnit] = @qtyUnit,
	[comment] = @comment,
	[pohId] = @pohId,
	[pohRev] = @pohRev,
	[lineNbr] = @lineNbr
WHERE [wcId] = @wcIdOrig
  AND [entry] = @entryOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIMOWR
	WHERE [wcId] = @wcId
	  AND [entry] = @entry
return @@rowcount

