/****** Object:  Procedure [dbo].[pr_MIORGS_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIORGS_Insert
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
	@TSCol rowversion output 
AS
INSERT dbo.MIORGS
(	[orgId],
	[descr],
	[orgType],
	[sysOrgId],
	[driverId],
	[database],
	[secLvl],
	[signonId],
	[signonPw],
	[secEnabled],
	[status]
)
VALUES
(
	@orgId,
	@descr,
	@orgType,
	@sysOrgId,
	@driverId,
	@database,
	@secLvl,
	@signonId,
	@signonPw,
	@secEnabled,
	@status
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIORGS
	  WHERE [orgId] = @orgId
return @@rowcount

