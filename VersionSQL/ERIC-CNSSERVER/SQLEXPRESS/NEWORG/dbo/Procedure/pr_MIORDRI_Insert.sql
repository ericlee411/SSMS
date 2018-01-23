/****** Object:  Procedure [dbo].[pr_MIORDRI_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIORDRI_Insert
	@userId nvarchar (8),
	@poId nvarchar (12),
	@moId nvarchar (15),
	@woId nvarchar (12),
	@nbthId nvarchar (6),
	@TSCol rowversion output 
AS
INSERT dbo.MIORDRI
(	[userId],
	[poId],
	[moId],
	[woId],
	[nbthId]
)
VALUES
(
	@userId,
	@poId,
	@moId,
	@woId,
	@nbthId
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIORDRI
	  WHERE [userId] = @userId
return @@rowcount

