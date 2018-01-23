/****** Object:  Procedure [dbo].[pr_MIILOCQT_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIILOCQT_Insert
	@itemId nvarchar (24),
	@locId nvarchar (6),
	@dateISO nvarchar (8),
	@qStk numeric (20, 6),
	@qWip numeric (20, 6),
	@qRes numeric (20, 6),
	@qOrd numeric (20, 6),
	@cStd numeric (20, 6),
	@cLast numeric (20, 6),
	@cAvg numeric (20, 6),
	@TSCol rowversion output 
AS
INSERT dbo.MIILOCQT
(	[itemId],
	[locId],
	[dateISO],
	[qStk],
	[qWip],
	[qRes],
	[qOrd],
	[cStd],
	[cLast],
	[cAvg]
)
VALUES
(
	@itemId,
	@locId,
	@dateISO,
	@qStk,
	@qWip,
	@qRes,
	@qOrd,
	@cStd,
	@cLast,
	@cAvg
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIILOCQT
	  WHERE [itemId] = @itemId
	   AND [locId] = @locId
	   AND [dateISO] = @dateISO
return @@rowcount

