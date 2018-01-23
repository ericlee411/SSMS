/****** Object:  Procedure [dbo].[pr_MICAL_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MICAL_Insert
	@sCalDate nvarchar (8),
	@dtInfo nvarchar (60),
	@type smallint,
	@TSCol rowversion output 
AS
INSERT dbo.MICAL
(	[sCalDate],
	[dtInfo],
	[type]
)
VALUES
(
	@sCalDate,
	@dtInfo,
	@type
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MICAL
	  WHERE [sCalDate] = @sCalDate
return @@rowcount

