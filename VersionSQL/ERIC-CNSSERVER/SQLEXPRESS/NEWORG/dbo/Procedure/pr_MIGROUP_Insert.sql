/****** Object:  Procedure [dbo].[pr_MIGROUP_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIGROUP_Insert
	@groupId nvarchar (8),
	@groupDesc nvarchar (60),
	@permissions binary (32),
	@shortcuts nvarchar (2000),
	@hiddenUI nvarchar (512),
	@TSCol rowversion output 
AS
INSERT dbo.MIGROUP
(	[groupId],
	[groupDesc],
	[permissions],
	[shortcuts],
	[hiddenUI]
)
VALUES
(
	@groupId,
	@groupDesc,
	@permissions,
	@shortcuts,
	@hiddenUI
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIGROUP
	  WHERE [groupId] = @groupId
return @@rowcount

