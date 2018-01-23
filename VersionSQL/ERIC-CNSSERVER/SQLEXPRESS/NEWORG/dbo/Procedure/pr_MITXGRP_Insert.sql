/****** Object:  Procedure [dbo].[pr_MITXGRP_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MITXGRP_Insert
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
	@TSCol rowversion output 
AS
INSERT dbo.MITXGRP
(	[groupId],
	[transType],
	[descr],
	[srcCur],
	[auth1],
	[auth2],
	[auth3],
	[auth4],
	[auth5],
	[taxable1],
	[taxable2],
	[taxable3],
	[taxable4],
	[taxable5],
	[calcMethod],
	[lstMaintDt],
	[surTax1],
	[surTax2],
	[surTax3],
	[surTax4],
	[surTax5],
	[surAuth1],
	[surAuth2],
	[surAuth3],
	[surAuth4],
	[surAuth5]
)
VALUES
(
	@groupId,
	@transType,
	@descr,
	@srcCur,
	@auth1,
	@auth2,
	@auth3,
	@auth4,
	@auth5,
	@taxable1,
	@taxable2,
	@taxable3,
	@taxable4,
	@taxable5,
	@calcMethod,
	@lstMaintDt,
	@surTax1,
	@surTax2,
	@surTax3,
	@surTax4,
	@surTax5,
	@surAuth1,
	@surAuth2,
	@surAuth3,
	@surAuth4,
	@surAuth5
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MITXGRP
	  WHERE [groupId] = @groupId
	   AND [transType] = @transType
return @@rowcount

