/****** Object:  Procedure [dbo].[pr_MIWCSH_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIWCSH_Insert
	@shiftId nvarchar (12),
	@descr nvarchar (60),
	@dflt bit,
	@TSCol rowversion output 
AS
INSERT dbo.MIWCSH
(	[shiftId],
	[descr],
	[dflt]
)
VALUES
(
	@shiftId,
	@descr,
	@dflt
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIWCSH
	  WHERE [shiftId] = @shiftId
return @@rowcount

