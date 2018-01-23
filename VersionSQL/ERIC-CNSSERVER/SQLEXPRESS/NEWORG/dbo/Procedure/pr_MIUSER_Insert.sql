/****** Object:  Procedure [dbo].[pr_MIUSER_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIUSER_Insert
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
	@TSCol rowversion output 
AS
INSERT dbo.MIUSER
(	[userId],
	[userName],
	[userPwd],
	[config],
	[domainName],
	[acctType],
	[acctStatus],
	[groupId],
	[uiProfileId],
	[lang],
	[licenseId],
	[logFlg],
	[SFQSerialNum],
	[machineId]
)
VALUES
(
	@userId,
	@userName,
	@userPwd,
	@config,
	@domainName,
	@acctType,
	@acctStatus,
	@groupId,
	@uiProfileId,
	@lang,
	@licenseId,
	@logFlg,
	@SFQSerialNum,
	@machineId
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIUSER
	  WHERE [userId] = @userId
return @@rowcount

