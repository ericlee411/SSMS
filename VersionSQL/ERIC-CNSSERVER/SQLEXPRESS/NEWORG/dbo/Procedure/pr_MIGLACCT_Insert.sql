/****** Object:  Procedure [dbo].[pr_MIGLACCT_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIGLACCT_Insert
	@acctId nvarchar (45),
	@name nvarchar (60),
	@type smallint,
	@status smallint,
	@TSCol rowversion output 
AS
INSERT dbo.MIGLACCT
(	[acctId],
	[name],
	[type],
	[status]
)
VALUES
(
	@acctId,
	@name,
	@type,
	@status
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIGLACCT
	  WHERE [acctId] = @acctId
return @@rowcount

