/****** Object:  Procedure [dbo].[pr_MIPIJL_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIPIJL_Insert
	@entry int,
	@itemId nvarchar (24),
	@locId nvarchar (6),
	@binId nvarchar (24),
	@type smallint,
	@dateISO nvarchar (8),
	@userId nvarchar (8),
	@recStk numeric (20, 6),
	@recWip numeric (20, 6),
	@stk numeric (20, 6),
	@wip numeric (20, 6),
	@TSCol rowversion output 
AS
INSERT dbo.MIPIJL
(	[entry],
	[itemId],
	[locId],
	[binId],
	[type],
	[dateISO],
	[userId],
	[recStk],
	[recWip],
	[stk],
	[wip]
)
VALUES
(
	@entry,
	@itemId,
	@locId,
	@binId,
	@type,
	@dateISO,
	@userId,
	@recStk,
	@recWip,
	@stk,
	@wip
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIPIJL
	  WHERE [entry] = @entry
return @@rowcount

