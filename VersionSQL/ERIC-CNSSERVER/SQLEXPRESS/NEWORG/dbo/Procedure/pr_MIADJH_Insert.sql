/****** Object:  Procedure [dbo].[pr_MIADJH_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIADJH_Insert
	@userId nvarchar (8),
	@descr nvarchar (60),
	@createdDt datetime,
	@lstEditDt datetime,
	@lstPostDt datetime,
	@status smallint,
	@TSCol rowversion output 
AS
INSERT dbo.MIADJH
(	[userId],
	[descr],
	[createdDt],
	[lstEditDt],
	[lstPostDt],
	[status]
)
VALUES
(
	@userId,
	@descr,
	@createdDt,
	@lstEditDt,
	@lstPostDt,
	@status
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIADJH
	  WHERE [userId] = @userId
return @@rowcount

