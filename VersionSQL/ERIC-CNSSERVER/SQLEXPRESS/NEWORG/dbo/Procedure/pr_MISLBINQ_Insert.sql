/****** Object:  Procedure [dbo].[pr_MISLBINQ_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MISLBINQ_Insert
	@locId nvarchar (6),
	@binId nvarchar (24),
	@lotId nvarchar (40),
	@itemId nvarchar (24),
	@qStk numeric (20, 6),
	@TSCol rowversion output 
AS
INSERT dbo.MISLBINQ
(	[locId],
	[binId],
	[lotId],
	[itemId],
	[qStk]
)
VALUES
(
	@locId,
	@binId,
	@lotId,
	@itemId,
	@qStk
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MISLBINQ
	  WHERE [locId] = @locId
	   AND [binId] = @binId
	   AND [lotId] = @lotId
return @@rowcount

