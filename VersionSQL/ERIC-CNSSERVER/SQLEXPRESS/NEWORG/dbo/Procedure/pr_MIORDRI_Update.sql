/****** Object:  Procedure [dbo].[pr_MIORDRI_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIORDRI_Update
	@userId nvarchar (8),
	@poId nvarchar (12),
	@moId nvarchar (15),
	@woId nvarchar (12),
	@nbthId nvarchar (6),
	@userIdOrig nvarchar (8),
	@TSCol rowversion output
AS
UPDATE MIORDRI
SET 	[userId] = @userId,
	[poId] = @poId,
	[moId] = @moId,
	[woId] = @woId,
	[nbthId] = @nbthId
WHERE [userId] = @userIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIORDRI
	WHERE [userId] = @userId
return @@rowcount

