/****** Object:  Procedure [dbo].[pr_MIPREF_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIPREF_Insert
	@userId nvarchar (8),
	@scavl smallint,
	@scovride smallint,
	@mtovride smallint,
	@piSortFld1 smallint,
	@piSortFld2 smallint,
	@piSortOrder bit,
	@piBasis smallint,
	@piFormat smallint,
	@piCopies smallint,
	@piBaseISODate nvarchar (8),
	@piBaseCycles nvarchar (50),
	@piItemLo nvarchar (24),
	@piItemHi nvarchar (24),
	@piLocLo nvarchar (6),
	@piLocHi nvarchar (6),
	@other text,
	@TSCol rowversion output 
AS
INSERT dbo.MIPREF
(	[userId],
	[scavl],
	[scovride],
	[mtovride],
	[piSortFld1],
	[piSortFld2],
	[piSortOrder],
	[piBasis],
	[piFormat],
	[piCopies],
	[piBaseISODate],
	[piBaseCycles],
	[piItemLo],
	[piItemHi],
	[piLocLo],
	[piLocHi],
	[other]
)
VALUES
(
	@userId,
	@scavl,
	@scovride,
	@mtovride,
	@piSortFld1,
	@piSortFld2,
	@piSortOrder,
	@piBasis,
	@piFormat,
	@piCopies,
	@piBaseISODate,
	@piBaseCycles,
	@piItemLo,
	@piItemHi,
	@piLocLo,
	@piLocHi,
	@other
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIPREF
	  WHERE [userId] = @userId
return @@rowcount

