/****** Object:  Procedure [dbo].[pr_MINEEDH_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MINEEDH_Insert
	@needNo int,
	@uniqItemLoc int,
	@needSource int,
	@needId nvarchar (15),
	@itemId nvarchar (24),
	@locId nvarchar (6),
	@itemType smallint,
	@qSup bit,
	@excess numeric (20, 6),
	@TSCol rowversion output 
AS
INSERT dbo.MINEEDH
(	[needNo],
	[uniqItemLoc],
	[needSource],
	[needId],
	[itemId],
	[locId],
	[itemType],
	[qSup],
	[excess]
)
VALUES
(
	@needNo,
	@uniqItemLoc,
	@needSource,
	@needId,
	@itemId,
	@locId,
	@itemType,
	@qSup,
	@excess
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MINEEDH
	  WHERE [needNo] = @needNo
	   AND [uniqItemLoc] = @uniqItemLoc
return @@rowcount

