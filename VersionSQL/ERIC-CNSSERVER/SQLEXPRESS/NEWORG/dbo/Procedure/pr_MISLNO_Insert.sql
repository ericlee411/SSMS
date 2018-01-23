/****** Object:  Procedure [dbo].[pr_MISLNO_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MISLNO_Insert
	@itemId nvarchar (24),
	@lotId nvarchar (40),
	@seqNo int,
	@TSCol rowversion output 
AS
INSERT dbo.MISLNO
(	[itemId],
	[lotId],
	[seqNo]
)
VALUES
(
	@itemId,
	@lotId,
	@seqNo
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MISLNO
	  WHERE [itemId] = @itemId
return @@rowcount

