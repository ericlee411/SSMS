/****** Object:  Procedure [dbo].[pr_MIORGS_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIORGS_Update
	@orgId nvarchar (12),
	@descr nvarchar (60),
	@orgType smallint,
	@sysOrgId nvarchar (6),
	@driverId smallint,
	@database nvarchar (260),
	@secLvl int,
	@signonId nvarchar (8),
	@signonPw nvarchar (64),
	@secEnabled int,
	@status int,
	@orgIdOrig nvarchar (12),
	@TSCol rowversion output
AS
UPDATE MIORGS
SET 	[orgId] = @orgId,
	[descr] = @descr,
	[orgType] = @orgType,
	[sysOrgId] = @sysOrgId,
	[driverId] = @driverId,
	[database] = @database,
	[secLvl] = @secLvl,
	[signonId] = @signonId,
	[signonPw] = @signonPw,
	[secEnabled] = @secEnabled,
	[status] = @status
WHERE [orgId] = @orgIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIORGS
	WHERE [orgId] = @orgId
return @@rowcount

