/****** Object:  Procedure [dbo].[pr_MIBINQ_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIBINQ_Insert
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
	@TSCol rowversion output 
AS
INSERT dbo.MIBINQ
(	[locId],
	[binId],
	[seqNo],
	[createDate],
	[lstUseDate],
	[descr],
	[status],
	[itemId],
	[qStk],
	[fldXml]
)
VALUES
(
	@locId,
	@binId,
	@seqNo,
	@createDate,
	@lstUseDate,
	@descr,
	@status,
	@itemId,
	@qStk,
	@fldXml
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIBINQ
	  WHERE [locId] = @locId
	   AND [binId] = @binId
return @@rowcount

