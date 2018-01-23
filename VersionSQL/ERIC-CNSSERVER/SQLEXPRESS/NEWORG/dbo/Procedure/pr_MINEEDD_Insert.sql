/****** Object:  Procedure [dbo].[pr_MINEEDD_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MINEEDD_Insert
	@needNo int,
	@uniqItemLoc int,
	@uniqDay int,
	@entry int,
	@needSource int,
	@needId nvarchar (15),
	@itemId nvarchar (24),
	@locId nvarchar (6),
	@reqISODate nvarchar (8),
	@pooISODate nvarchar (8),
	@wooISODate nvarchar (8),
	@mooISODate nvarchar (8),
	@popQty numeric (20, 6),
	@wopQty numeric (20, 6),
	@mopQty numeric (20, 6),
	@posQty numeric (20, 6),
	@wosQty numeric (20, 6),
	@mosQty numeric (20, 6),
	@shortQty numeric (20, 6),
	@excess numeric (20, 6),
	@revId nvarchar (6),
	@SOId nvarchar (256),
	@Detail int,
	@customer nvarchar (256),
	@mohId nvarchar (15),
	@momdId int,
	@TSCol rowversion output 
AS
INSERT dbo.MINEEDD
(	[needNo],
	[uniqItemLoc],
	[uniqDay],
	[entry],
	[needSource],
	[needId],
	[itemId],
	[locId],
	[reqISODate],
	[pooISODate],
	[wooISODate],
	[mooISODate],
	[popQty],
	[wopQty],
	[mopQty],
	[posQty],
	[wosQty],
	[mosQty],
	[shortQty],
	[excess],
	[revId],
	[SOId],
	[Detail],
	[customer],
	[mohId],
	[momdId]
)
VALUES
(
	@needNo,
	@uniqItemLoc,
	@uniqDay,
	@entry,
	@needSource,
	@needId,
	@itemId,
	@locId,
	@reqISODate,
	@pooISODate,
	@wooISODate,
	@mooISODate,
	@popQty,
	@wopQty,
	@mopQty,
	@posQty,
	@wosQty,
	@mosQty,
	@shortQty,
	@excess,
	@revId,
	@SOId,
	@Detail,
	@customer,
	@mohId,
	@momdId
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MINEEDD
	  WHERE [needNo] = @needNo
	   AND [uniqItemLoc] = @uniqItemLoc
	   AND [uniqDay] = @uniqDay
	   AND [entry] = @entry
return @@rowcount

