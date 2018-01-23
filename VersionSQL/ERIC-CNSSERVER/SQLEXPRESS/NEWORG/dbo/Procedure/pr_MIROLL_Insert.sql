/****** Object:  Procedure [dbo].[pr_MIROLL_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIROLL_Insert
	@userId nvarchar (8),
	@entry int,
	@itemId nvarchar (24),
	@oldStd numeric (20, 6),
	@newStd numeric (20, 6),
	@oldAvg numeric (20, 6),
	@newAvg numeric (20, 6),
	@TSCol rowversion output 
AS
INSERT dbo.MIROLL
(	[userId],
	[entry],
	[itemId],
	[oldStd],
	[newStd],
	[oldAvg],
	[newAvg]
)
VALUES
(
	@userId,
	@entry,
	@itemId,
	@oldStd,
	@newStd,
	@oldAvg,
	@newAvg
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIROLL
	  WHERE [userId] = @userId
	   AND [entry] = @entry
return @@rowcount

