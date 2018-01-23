/****** Object:  Procedure [dbo].[pr_MIBINQ_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIBINQ_Update
	@locId nvarchar (6),
	@binId nvarchar (24),
	@seqNo nvarchar (6),
	@createDate nvarchar (8),
	@lstUseDate nvarchar (8),
	@descr nvarchar (30),
	@status smallint,
	@itemId nvarchar (24),
	@qStk numeric (20, 6),
	@fldXml text,
	@locIdOrig nvarchar (6),
	@binIdOrig nvarchar (24),
	@TSCol rowversion output
AS
UPDATE MIBINQ
SET 	[locId] = @locId,
	[binId] = @binId,
	[seqNo] = @seqNo,
	[createDate] = @createDate,
	[lstUseDate] = @lstUseDate,
	[descr] = @descr,
	[status] = @status,
	[itemId] = @itemId,
	[qStk] = @qStk,
	[fldXml] = @fldXml
WHERE [locId] = @locIdOrig
  AND [binId] = @binIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIBINQ
	WHERE [locId] = @locId
	  AND [binId] = @binId
return @@rowcount

