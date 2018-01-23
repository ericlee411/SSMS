/****** Object:  Procedure [dbo].[pr_MIGLACCT_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIGLACCT_Update
	@acctId nvarchar (45),
	@name nvarchar (60),
	@type smallint,
	@status smallint,
	@acctIdOrig nvarchar (45),
	@TSCol rowversion output
AS
UPDATE MIGLACCT
SET 	[acctId] = @acctId,
	[name] = @name,
	[type] = @type,
	[status] = @status
WHERE [acctId] = @acctIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIGLACCT
	WHERE [acctId] = @acctId
return @@rowcount

