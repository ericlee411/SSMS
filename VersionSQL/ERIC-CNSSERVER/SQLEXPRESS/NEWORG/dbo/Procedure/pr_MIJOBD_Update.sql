/****** Object:  Procedure [dbo].[pr_MIJOBD_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIJOBD_Update
	@jobId nvarchar (12),
	@jobItem nvarchar (24),
	@part nvarchar (24),
	@locId nvarchar (6),
	@type smallint,
	@qStk numeric (20, 6),
	@qWip numeric (20, 6),
	@qRes numeric (20, 6),
	@qOrd numeric (20, 6),
	@qUsed numeric (20, 6),
	@qRecd numeric (20, 6),
	@cStk numeric (20, 6),
	@cWip numeric (20, 6),
	@cRes numeric (20, 6),
	@cOrd numeric (20, 6),
	@cUsed numeric (20, 6),
	@cRecd numeric (20, 6),
	@jobIdOrig nvarchar (12),
	@jobItemOrig nvarchar (24),
	@partOrig nvarchar (24),
	@locIdOrig nvarchar (6),
	@typeOrig smallint,
	@TSCol rowversion output
AS
UPDATE MIJOBD
SET 	[jobId] = @jobId,
	[jobItem] = @jobItem,
	[part] = @part,
	[locId] = @locId,
	[type] = @type,
	[qStk] = @qStk,
	[qWip] = @qWip,
	[qRes] = @qRes,
	[qOrd] = @qOrd,
	[qUsed] = @qUsed,
	[qRecd] = @qRecd,
	[cStk] = @cStk,
	[cWip] = @cWip,
	[cRes] = @cRes,
	[cOrd] = @cOrd,
	[cUsed] = @cUsed,
	[cRecd] = @cRecd
WHERE [jobId] = @jobIdOrig
  AND [jobItem] = @jobItemOrig
  AND [part] = @partOrig
  AND [locId] = @locIdOrig
  AND [type] = @typeOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIJOBD
	WHERE [jobId] = @jobId
	  AND [jobItem] = @jobItem
	  AND [part] = @part
	  AND [locId] = @locId
	  AND [type] = @type
return @@rowcount

