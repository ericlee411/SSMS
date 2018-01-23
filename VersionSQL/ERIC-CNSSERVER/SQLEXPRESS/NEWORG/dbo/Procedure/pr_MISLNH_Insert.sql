/****** Object:  Procedure [dbo].[pr_MISLNH_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MISLNH_Insert
	@itemId nvarchar (24),
	@lotId nvarchar (40),
	@seqNo int,
	@descr nvarchar (60),
	@createDate nvarchar (8),
	@expireDate nvarchar (8),
	@lstUseDate nvarchar (8),
	@status smallint,
	@docPath nvarchar (260),
	@fldXml text,
	@TSCol rowversion output 
AS
INSERT dbo.MISLNH
(	[itemId],
	[lotId],
	[seqNo],
	[descr],
	[createDate],
	[expireDate],
	[lstUseDate],
	[status],
	[docPath],
	[fldXml]
)
VALUES
(
	@itemId,
	@lotId,
	@seqNo,
	@descr,
	@createDate,
	@expireDate,
	@lstUseDate,
	@status,
	@docPath,
	@fldXml
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MISLNH
	  WHERE [itemId] = @itemId
	   AND [lotId] = @lotId
return @@rowcount

