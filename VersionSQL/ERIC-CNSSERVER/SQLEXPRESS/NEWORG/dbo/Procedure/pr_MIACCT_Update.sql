/****** Object:  Procedure [dbo].[pr_MIACCT_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIACCT_Update
	@setId nvarchar (8),
	@setName nvarchar (60),
	@acct1 nvarchar (45),
	@acct2 nvarchar (45),
	@acct3 nvarchar (45),
	@acct4 nvarchar (45),
	@acct5 nvarchar (45),
	@acct6 nvarchar (45),
	@acct7 nvarchar (45),
	@acct8 nvarchar (45),
	@acct9 nvarchar (45),
	@acct10 nvarchar (45),
	@acct11 nvarchar (45),
	@acct12 nvarchar (45),
	@acct13 nvarchar (45),
	@acct14 nvarchar (45),
	@acct15 nvarchar (45),
	@acct16 nvarchar (45),
	@acct17 nvarchar (45),
	@acct18 nvarchar (45),
	@acct19 nvarchar (45),
	@acct20 nvarchar (45),
	@acct21 nvarchar (45),
	@acct22 nvarchar (45),
	@acct23 nvarchar (45),
	@acct24 nvarchar (45),
	@acct25 nvarchar (45),
	@acct26 nvarchar (45),
	@acct27 nvarchar (45),
	@acct28 nvarchar (45),
	@acct29 nvarchar (45),
	@acct30 nvarchar (45),
	@acct31 nvarchar (45),
	@acct32 nvarchar (45),
	@setIdOrig nvarchar (8),
	@TSCol rowversion output
AS
UPDATE MIACCT
SET 	[setId] = @setId,
	[setName] = @setName,
	[acct1] = @acct1,
	[acct2] = @acct2,
	[acct3] = @acct3,
	[acct4] = @acct4,
	[acct5] = @acct5,
	[acct6] = @acct6,
	[acct7] = @acct7,
	[acct8] = @acct8,
	[acct9] = @acct9,
	[acct10] = @acct10,
	[acct11] = @acct11,
	[acct12] = @acct12,
	[acct13] = @acct13,
	[acct14] = @acct14,
	[acct15] = @acct15,
	[acct16] = @acct16,
	[acct17] = @acct17,
	[acct18] = @acct18,
	[acct19] = @acct19,
	[acct20] = @acct20,
	[acct21] = @acct21,
	[acct22] = @acct22,
	[acct23] = @acct23,
	[acct24] = @acct24,
	[acct25] = @acct25,
	[acct26] = @acct26,
	[acct27] = @acct27,
	[acct28] = @acct28,
	[acct29] = @acct29,
	[acct30] = @acct30,
	[acct31] = @acct31,
	[acct32] = @acct32
WHERE [setId] = @setIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIACCT
	WHERE [setId] = @setId
return @@rowcount

