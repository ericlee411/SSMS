/****** Object:  Procedure [dbo].[pr_MILICENSE_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MILICENSE_Insert
	@entry int,
	@type int,
	@key nvarchar (128),
	@orgId nvarchar (12),
	@expireDate datetime,
	@count int,
	@assignable bit,
	@TSCol rowversion output 
AS
INSERT dbo.MILICENSE
(	[entry],
	[type],
	[key],
	[orgId],
	[expireDate],
	[count],
	[assignable]
)
VALUES
(
	@entry,
	@type,
	@key,
	@orgId,
	@expireDate,
	@count,
	@assignable
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MILICENSE
	  WHERE [entry] = @entry
return @@rowcount

