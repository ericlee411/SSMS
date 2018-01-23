/****** Object:  Procedure [dbo].[pr_MIJOBD_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIJOBD_Insert
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
	@TSCol rowversion output 
AS
INSERT dbo.MIJOBD
(	[jobId],
	[jobItem],
	[part],
	[locId],
	[type],
	[qStk],
	[qWip],
	[qRes],
	[qOrd],
	[qUsed],
	[qRecd],
	[cStk],
	[cWip],
	[cRes],
	[cOrd],
	[cUsed],
	[cRecd]
)
VALUES
(
	@jobId,
	@jobItem,
	@part,
	@locId,
	@type,
	@qStk,
	@qWip,
	@qRes,
	@qOrd,
	@qUsed,
	@qRecd,
	@cStk,
	@cWip,
	@cRes,
	@cOrd,
	@cUsed,
	@cRecd
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIJOBD
	  WHERE [jobId] = @jobId
	   AND [jobItem] = @jobItem
	   AND [part] = @part
	   AND [locId] = @locId
	   AND [type] = @type
return @@rowcount

