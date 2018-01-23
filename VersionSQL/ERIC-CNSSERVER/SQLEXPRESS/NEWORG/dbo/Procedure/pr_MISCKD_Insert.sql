/****** Object:  Procedure [dbo].[pr_MISCKD_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MISCKD_Insert
	@userId nvarchar (8),
	@itemId nvarchar (24),
	@locId nvarchar (6),
	@descr nvarchar (60),
	@type smallint,
	@status smallint,
	@iqStk numeric (20, 6),
	@iqWip numeric (20, 6),
	@iqRes numeric (20, 6),
	@iqOrd numeric (20, 6),
	@fqStk numeric (20, 6),
	@fqWip numeric (20, 6),
	@fqRes numeric (20, 6),
	@fqOrd numeric (20, 6),
	@iqAvl numeric (20, 6),
	@fqAvl numeric (20, 6),
	@variance numeric (20, 6),
	@TSCol rowversion output 
AS
INSERT dbo.MISCKD
(	[userId],
	[itemId],
	[locId],
	[descr],
	[type],
	[status],
	[iqStk],
	[iqWip],
	[iqRes],
	[iqOrd],
	[fqStk],
	[fqWip],
	[fqRes],
	[fqOrd],
	[iqAvl],
	[fqAvl],
	[variance]
)
VALUES
(
	@userId,
	@itemId,
	@locId,
	@descr,
	@type,
	@status,
	@iqStk,
	@iqWip,
	@iqRes,
	@iqOrd,
	@fqStk,
	@fqWip,
	@fqRes,
	@fqOrd,
	@iqAvl,
	@fqAvl,
	@variance
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MISCKD
	  WHERE [userId] = @userId
	   AND [itemId] = @itemId
	   AND [locId] = @locId
return @@rowcount

