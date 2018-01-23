/****** Object:  Procedure [dbo].[pr_MIRESTRT_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIRESTRT_Update
	@orgId nvarchar (12),
	@processId nvarchar (12),
	@userId nvarchar (8),
	@unqId int,
	@logTranDt datetime,
	@logEntry int,
	@marker int,
	@record varchar (7000),
	@orgIdOrig nvarchar (12),
	@processIdOrig nvarchar (12),
	@userIdOrig nvarchar (8),
	@unqIdOrig int,
	@TSCol rowversion output
AS
UPDATE MIRESTRT
SET 	[orgId] = @orgId,
	[processId] = @processId,
	[userId] = @userId,
	[unqId] = @unqId,
	[logTranDt] = @logTranDt,
	[logEntry] = @logEntry,
	[marker] = @marker,
	[record] = @record
WHERE [orgId] = @orgIdOrig
  AND [processId] = @processIdOrig
  AND [userId] = @userIdOrig
  AND [unqId] = @unqIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIRESTRT
	WHERE [orgId] = @orgId
	  AND [processId] = @processId
	  AND [userId] = @userId
	  AND [unqId] = @unqId
return @@rowcount

