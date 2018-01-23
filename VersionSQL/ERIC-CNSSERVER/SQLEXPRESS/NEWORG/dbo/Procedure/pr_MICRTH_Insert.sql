/****** Object:  Procedure [dbo].[pr_MICRTH_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MICRTH_Insert
	@homeCur nvarchar (3),
	@rateType nvarchar (2),
	@tblDesc nvarchar (60),
	@dateMatch smallint,
	@rateOper smallint,
	@rateSrc nvarchar (60),
	@TSCol rowversion output 
AS
INSERT dbo.MICRTH
(	[homeCur],
	[rateType],
	[tblDesc],
	[dateMatch],
	[rateOper],
	[rateSrc]
)
VALUES
(
	@homeCur,
	@rateType,
	@tblDesc,
	@dateMatch,
	@rateOper,
	@rateSrc
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MICRTH
	  WHERE [homeCur] = @homeCur
	   AND [rateType] = @rateType
return @@rowcount

