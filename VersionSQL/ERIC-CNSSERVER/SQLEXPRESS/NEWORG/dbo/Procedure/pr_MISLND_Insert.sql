/****** Object:  Procedure [dbo].[pr_MISLND_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MISLND_Insert
	@itemId nvarchar (24),
	@lotId nvarchar (40),
	@locId nvarchar (6),
	@qStk numeric (20, 6),
	@qWip numeric (20, 6),
	@qUsed numeric (20, 6),
	@qRcvd numeric (20, 6),
	@qScrp numeric (20, 6),
	@qBuilt numeric (20, 6),
	@rcvdDate nvarchar (8),
	@TSCol rowversion output 
AS
INSERT dbo.MISLND
(	[itemId],
	[lotId],
	[locId],
	[qStk],
	[qWip],
	[qUsed],
	[qRcvd],
	[qScrp],
	[qBuilt],
	[rcvdDate]
)
VALUES
(
	@itemId,
	@lotId,
	@locId,
	@qStk,
	@qWip,
	@qUsed,
	@qRcvd,
	@qScrp,
	@qBuilt,
	@rcvdDate
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MISLND
	  WHERE [itemId] = @itemId
	   AND [lotId] = @lotId
	   AND [locId] = @locId
return @@rowcount

