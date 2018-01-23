/****** Object:  Procedure [dbo].[pr_MIUSER_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIUSER_Update
	@userId nvarchar (8),
	@userName nvarchar (60),
	@userPwd nvarchar (256),
	@config text,
	@domainName nvarchar (260),
	@acctType int,
	@acctStatus int,
	@groupId nvarchar (8),
	@uiProfileId nvarchar (8),
	@lang nvarchar (3),
	@licenseId nvarchar (12),
	@logFlg bit,
	@SFQSerialNum nvarchar (128),
	@machineId nvarchar (128),
	@userIdOrig nvarchar (8),
	@TSCol rowversion output
AS
UPDATE MIUSER
SET 	[userId] = @userId,
	[userName] = @userName,
	[userPwd] = @userPwd,
	[config] = @config,
	[domainName] = @domainName,
	[acctType] = @acctType,
	[acctStatus] = @acctStatus,
	[groupId] = @groupId,
	[uiProfileId] = @uiProfileId,
	[lang] = @lang,
	[licenseId] = @licenseId,
	[logFlg] = @logFlg,
	[SFQSerialNum] = @SFQSerialNum,
	[machineId] = @machineId
WHERE [userId] = @userIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIUSER
	WHERE [userId] = @userId
return @@rowcount

