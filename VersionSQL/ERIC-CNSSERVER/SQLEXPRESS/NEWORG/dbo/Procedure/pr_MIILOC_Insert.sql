/****** Object:  Procedure [dbo].[pr_MIILOC_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIILOC_Insert
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
	@TSCol rowversion output 
AS
INSERT dbo.MIILOC
(	[itemId],
	[locId],
	[pick],
	[minLvl],
	[maxLvl],
	[ordLvl],
	[ordQty],
	[lstPIDate],
	[variance],
	[qStk],
	[qWIP],
	[qRes],
	[qOrd],
	[iqStk],
	[iqWIP],
	[iqRes],
	[iqOrd],
	[lstUseDate],
	[fldXml]
)
VALUES
(
	@itemId,
	@locId,
	@pick,
	@minLvl,
	@maxLvl,
	@ordLvl,
	@ordQty,
	@lstPIDate,
	@variance,
	@qStk,
	@qWIP,
	@qRes,
	@qOrd,
	@iqStk,
	@iqWIP,
	@iqRes,
	@iqOrd,
	@lstUseDate,
	@fldXml
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIILOC
	  WHERE [itemId] = @itemId
	   AND [locId] = @locId
return @@rowcount

