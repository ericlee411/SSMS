/****** Object:  Procedure [dbo].[pr_MITXRATE_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MITXRATE_Update
	@authority nvarchar (12),
	@transType smallint,
	@buyerClass int,
	@itmRate1 numeric (20, 6),
	@itmRate2 numeric (20, 6),
	@itmRate3 numeric (20, 6),
	@itmRate4 numeric (20, 6),
	@itmRate5 numeric (20, 6),
	@itmRate6 numeric (20, 6),
	@itmRate7 numeric (20, 6),
	@itmRate8 numeric (20, 6),
	@itmRate9 numeric (20, 6),
	@itmRate10 numeric (20, 6),
	@lstMaintDt datetime,
	@authorityOrig nvarchar (12),
	@transTypeOrig smallint,
	@buyerClassOrig int,
	@TSCol rowversion output
AS
UPDATE MITXRATE
SET 	[authority] = @authority,
	[transType] = @transType,
	[buyerClass] = @buyerClass,
	[itmRate1] = @itmRate1,
	[itmRate2] = @itmRate2,
	[itmRate3] = @itmRate3,
	[itmRate4] = @itmRate4,
	[itmRate5] = @itmRate5,
	[itmRate6] = @itmRate6,
	[itmRate7] = @itmRate7,
	[itmRate8] = @itmRate8,
	[itmRate9] = @itmRate9,
	[itmRate10] = @itmRate10,
	[lstMaintDt] = @lstMaintDt
WHERE [authority] = @authorityOrig
  AND [transType] = @transTypeOrig
  AND [buyerClass] = @buyerClassOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MITXRATE
	WHERE [authority] = @authority
	  AND [transType] = @transType
	  AND [buyerClass] = @buyerClass
return @@rowcount

