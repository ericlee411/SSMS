/****** Object:  Procedure [dbo].[pr_MICRT_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MICRT_Insert
	@rateType nvarchar (2),
	@rateDesc nvarchar (60),
	@TSCol rowversion output 
AS
INSERT dbo.MICRT
(	[rateType],
	[rateDesc]
)
VALUES
(
	@rateType,
	@rateDesc
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MICRT
	  WHERE [rateType] = @rateType
return @@rowcount

