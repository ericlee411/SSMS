/****** Object:  Procedure [dbo].[pr_MISLNH_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISLNH_Update
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
	@itemIdOrig nvarchar (24),
	@lotIdOrig nvarchar (40),
	@TSCol rowversion output
AS
UPDATE MISLNH
SET 	[itemId] = @itemId,
	[lotId] = @lotId,
	[seqNo] = @seqNo,
	[descr] = @descr,
	[createDate] = @createDate,
	[expireDate] = @expireDate,
	[lstUseDate] = @lstUseDate,
	[status] = @status,
	[docPath] = @docPath,
	[fldXml] = @fldXml
WHERE [itemId] = @itemIdOrig
  AND [lotId] = @lotIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MISLNH
	WHERE [itemId] = @itemId
	  AND [lotId] = @lotId
return @@rowcount

