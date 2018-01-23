/****** Object:  Procedure [dbo].[pr_MIPREF_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIPREF_Update
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
	@userIdOrig nvarchar (8),
	@TSCol rowversion output
AS
UPDATE MIPREF
SET 	[userId] = @userId,
	[scavl] = @scavl,
	[scovride] = @scovride,
	[mtovride] = @mtovride,
	[piSortFld1] = @piSortFld1,
	[piSortFld2] = @piSortFld2,
	[piSortOrder] = @piSortOrder,
	[piBasis] = @piBasis,
	[piFormat] = @piFormat,
	[piCopies] = @piCopies,
	[piBaseISODate] = @piBaseISODate,
	[piBaseCycles] = @piBaseCycles,
	[piItemLo] = @piItemLo,
	[piItemHi] = @piItemHi,
	[piLocLo] = @piLocLo,
	[piLocHi] = @piLocHi,
	[other] = @other
WHERE [userId] = @userIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIPREF
	WHERE [userId] = @userId
return @@rowcount

