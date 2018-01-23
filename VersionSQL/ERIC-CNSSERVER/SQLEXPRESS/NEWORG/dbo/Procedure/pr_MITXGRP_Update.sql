/****** Object:  Procedure [dbo].[pr_MITXGRP_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MITXGRP_Update
	@groupId nvarchar (12),
	@transType smallint,
	@descr nvarchar (60),
	@srcCur nvarchar (3),
	@auth1 nvarchar (12),
	@auth2 nvarchar (12),
	@auth3 nvarchar (12),
	@auth4 nvarchar (12),
	@auth5 nvarchar (12),
	@taxable1 bit,
	@taxable2 bit,
	@taxable3 bit,
	@taxable4 bit,
	@taxable5 bit,
	@calcMethod smallint,
	@lstMaintDt datetime,
	@surTax1 bit,
	@surTax2 bit,
	@surTax3 bit,
	@surTax4 bit,
	@surTax5 bit,
	@surAuth1 nvarchar (12),
	@surAuth2 nvarchar (12),
	@surAuth3 nvarchar (12),
	@surAuth4 nvarchar (12),
	@surAuth5 nvarchar (12),
	@groupIdOrig nvarchar (12),
	@transTypeOrig smallint,
	@TSCol rowversion output
AS
UPDATE MITXGRP
SET 	[groupId] = @groupId,
	[transType] = @transType,
	[descr] = @descr,
	[srcCur] = @srcCur,
	[auth1] = @auth1,
	[auth2] = @auth2,
	[auth3] = @auth3,
	[auth4] = @auth4,
	[auth5] = @auth5,
	[taxable1] = @taxable1,
	[taxable2] = @taxable2,
	[taxable3] = @taxable3,
	[taxable4] = @taxable4,
	[taxable5] = @taxable5,
	[calcMethod] = @calcMethod,
	[lstMaintDt] = @lstMaintDt,
	[surTax1] = @surTax1,
	[surTax2] = @surTax2,
	[surTax3] = @surTax3,
	[surTax4] = @surTax4,
	[surTax5] = @surTax5,
	[surAuth1] = @surAuth1,
	[surAuth2] = @surAuth2,
	[surAuth3] = @surAuth3,
	[surAuth4] = @surAuth4,
	[surAuth5] = @surAuth5
WHERE [groupId] = @groupIdOrig
  AND [transType] = @transTypeOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MITXGRP
	WHERE [groupId] = @groupId
	  AND [transType] = @transType
return @@rowcount

