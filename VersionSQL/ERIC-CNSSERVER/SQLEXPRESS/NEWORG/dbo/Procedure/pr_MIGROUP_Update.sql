/****** Object:  Procedure [dbo].[pr_MIGROUP_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIGROUP_Update
	@groupId nvarchar (8),
	@groupDesc nvarchar (60),
	@permissions binary (32),
	@shortcuts nvarchar (2000),
	@hiddenUI nvarchar (512),
	@groupIdOrig nvarchar (8),
	@TSCol rowversion output
AS
UPDATE MIGROUP
SET 	[groupId] = @groupId,
	[groupDesc] = @groupDesc,
	[permissions] = @permissions,
	[shortcuts] = @shortcuts,
	[hiddenUI] = @hiddenUI
WHERE [groupId] = @groupIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIGROUP
	WHERE [groupId] = @groupId
return @@rowcount

