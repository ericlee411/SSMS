/****** Object:  Procedure [dbo].[pr_MIRESTRT_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIRESTRT_Insert
	@orgId nvarchar (12),
	@processId nvarchar (12),
	@userId nvarchar (8),
	@unqId int,
	@logTranDt datetime,
	@logEntry int,
	@marker int,
	@record varchar (7000),
	@TSCol rowversion output 
AS
INSERT dbo.MIRESTRT
(	[orgId],
	[processId],
	[userId],
	[unqId],
	[logTranDt],
	[logEntry],
	[marker],
	[record]
)
VALUES
(
	@orgId,
	@processId,
	@userId,
	@unqId,
	@logTranDt,
	@logEntry,
	@marker,
	@record
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIRESTRT
	  WHERE [orgId] = @orgId
	   AND [processId] = @processId
	   AND [userId] = @userId
	   AND [unqId] = @unqId
return @@rowcount

