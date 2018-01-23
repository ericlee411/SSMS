/****** Object:  Procedure [dbo].[pr_MIMOWC_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIMOWC_Insert
	@wcId nvarchar (24),
	@descr nvarchar (30),
	@shiftId nvarchar (12),
	@classId nvarchar (12),
	@setupTime numeric (20, 6),
	@cycleTime numeric (20, 6),
	@preopTime numeric (20, 6),
	@postOpTime numeric (20, 6),
	@locId nvarchar (6),
	@docPath nvarchar (260),
	@efficiency numeric (20, 6),
	@fldXml text,
	@status smallint,
	@TSCol rowversion output 
AS
INSERT dbo.MIMOWC
(	[wcId],
	[descr],
	[shiftId],
	[classId],
	[setupTime],
	[cycleTime],
	[preopTime],
	[postOpTime],
	[locId],
	[docPath],
	[efficiency],
	[fldXml],
	[status]
)
VALUES
(
	@wcId,
	@descr,
	@shiftId,
	@classId,
	@setupTime,
	@cycleTime,
	@preopTime,
	@postOpTime,
	@locId,
	@docPath,
	@efficiency,
	@fldXml,
	@status
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIMOWC
	  WHERE [wcId] = @wcId
return @@rowcount

