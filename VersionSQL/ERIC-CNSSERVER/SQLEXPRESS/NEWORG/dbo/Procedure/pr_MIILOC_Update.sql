/****** Object:  Procedure [dbo].[pr_MIILOC_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIILOC_Update
	@itemId nvarchar (24),
	@locId nvarchar (6),
	@pick nvarchar (24),
	@minLvl numeric (20, 6),
	@maxLvl numeric (20, 6),
	@ordLvl numeric (20, 6),
	@ordQty numeric (20, 6),
	@lstPIDate nvarchar (8),
	@variance numeric (20, 6),
	@qStk numeric (20, 6),
	@qWIP numeric (20, 6),
	@qRes numeric (20, 6),
	@qOrd numeric (20, 6),
	@iqStk numeric (20, 6),
	@iqWIP numeric (20, 6),
	@iqRes numeric (20, 6),
	@iqOrd numeric (20, 6),
	@lstUseDate nvarchar (8),
	@fldXml text,
	@itemIdOrig nvarchar (24),
	@locIdOrig nvarchar (6),
	@TSCol rowversion output
AS
UPDATE MIILOC
SET 	[itemId] = @itemId,
	[locId] = @locId,
	[pick] = @pick,
	[minLvl] = @minLvl,
	[maxLvl] = @maxLvl,
	[ordLvl] = @ordLvl,
	[ordQty] = @ordQty,
	[lstPIDate] = @lstPIDate,
	[variance] = @variance,
	[qStk] = @qStk,
	[qWIP] = @qWIP,
	[qRes] = @qRes,
	[qOrd] = @qOrd,
	[iqStk] = @iqStk,
	[iqWIP] = @iqWIP,
	[iqRes] = @iqRes,
	[iqOrd] = @iqOrd,
	[lstUseDate] = @lstUseDate,
	[fldXml] = @fldXml
WHERE [itemId] = @itemIdOrig
  AND [locId] = @locIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIILOC
	WHERE [itemId] = @itemId
	  AND [locId] = @locId
return @@rowcount

