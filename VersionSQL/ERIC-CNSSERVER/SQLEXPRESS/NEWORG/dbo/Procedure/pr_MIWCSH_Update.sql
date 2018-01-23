/****** Object:  Procedure [dbo].[pr_MIWCSH_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIWCSH_Update
	@shiftId nvarchar (12),
	@descr nvarchar (60),
	@dflt bit,
	@shiftIdOrig nvarchar (12),
	@TSCol rowversion output
AS
UPDATE MIWCSH
SET 	[shiftId] = @shiftId,
	[descr] = @descr,
	[dflt] = @dflt
WHERE [shiftId] = @shiftIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIWCSH
	WHERE [shiftId] = @shiftId
return @@rowcount

