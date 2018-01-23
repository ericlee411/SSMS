/****** Object:  Procedure [dbo].[pr_MIMOWC_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIMOWC_Update
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
	@wcIdOrig nvarchar (24),
	@TSCol rowversion output
AS
UPDATE MIMOWC
SET 	[wcId] = @wcId,
	[descr] = @descr,
	[shiftId] = @shiftId,
	[classId] = @classId,
	[setupTime] = @setupTime,
	[cycleTime] = @cycleTime,
	[preopTime] = @preopTime,
	[postOpTime] = @postOpTime,
	[locId] = @locId,
	[docPath] = @docPath,
	[efficiency] = @efficiency,
	[fldXml] = @fldXml,
	[status] = @status
WHERE [wcId] = @wcIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIMOWC
	WHERE [wcId] = @wcId
return @@rowcount

