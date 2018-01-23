/****** Object:  Procedure [dbo].[pr_MILICENSE_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MILICENSE_Update
	@entry int,
	@type int,
	@key nvarchar (128),
	@orgId nvarchar (12),
	@expireDate datetime,
	@count int,
	@assignable bit,
	@entryOrig int,
	@TSCol rowversion output
AS
UPDATE MILICENSE
SET 	[entry] = @entry,
	[type] = @type,
	[key] = @key,
	[orgId] = @orgId,
	[expireDate] = @expireDate,
	[count] = @count,
	[assignable] = @assignable
WHERE [entry] = @entryOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MILICENSE
	WHERE [entry] = @entry
return @@rowcount

