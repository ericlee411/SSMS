/****** Object:  Procedure [dbo].[pr_MILOGH_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MILOGH_Update
	@tranDate nvarchar (8),
	@userId nvarchar (8),
	@entry int,
	@type smallint,
	@itemId nvarchar (24),
	@revId nvarchar (6),
	@comment nvarchar (255),
	@qty numeric (20, 6),
	@jobId nvarchar (12),
	@locId nvarchar (6),
	@binId nvarchar (24),
	@glFlag smallint,
	@jrnlNo int,
	@xvarItemId nvarchar (24),
	@xvarToLoc nvarchar (6),
	@xvarBinId nvarchar (24),
	@xvarOpCode nvarchar (24),
	@xvarSuplId nvarchar (12),
	@xvarPOId nvarchar (12),
	@xvarPORev smallint,
	@xvarWOId nvarchar (12),
	@xvarMOId nvarchar (15),
	@xvarDtl int,
	@xvarNoStk bit,
	@xvarInitVal numeric (20, 6),
	@xvarFinalVal numeric (20, 6),
	@xvarSalesId nvarchar (256),
	@xvarSOId nvarchar (256),
	@xvarSOLn int,
	@xvarBillId nvarchar (256),
	@xvarSalesLoc nvarchar (256),
	@tranDateOrig nvarchar (8),
	@userIdOrig nvarchar (8),
	@entryOrig int,
	@TSCol rowversion output
AS
UPDATE MILOGH
SET 	[tranDate] = @tranDate,
	[userId] = @userId,
	[entry] = @entry,
	[type] = @type,
	[itemId] = @itemId,
	[revId] = @revId,
	[comment] = @comment,
	[qty] = @qty,
	[jobId] = @jobId,
	[locId] = @locId,
	[binId] = @binId,
	[glFlag] = @glFlag,
	[jrnlNo] = @jrnlNo,
	[xvarItemId] = @xvarItemId,
	[xvarToLoc] = @xvarToLoc,
	[xvarBinId] = @xvarBinId,
	[xvarOpCode] = @xvarOpCode,
	[xvarSuplId] = @xvarSuplId,
	[xvarPOId] = @xvarPOId,
	[xvarPORev] = @xvarPORev,
	[xvarWOId] = @xvarWOId,
	[xvarMOId] = @xvarMOId,
	[xvarDtl] = @xvarDtl,
	[xvarNoStk] = @xvarNoStk,
	[xvarInitVal] = @xvarInitVal,
	[xvarFinalVal] = @xvarFinalVal,
	[xvarSalesId] = @xvarSalesId,
	[xvarSOId] = @xvarSOId,
	[xvarSOLn] = @xvarSOLn,
	[xvarBillId] = @xvarBillId,
	[xvarSalesLoc] = @xvarSalesLoc
WHERE [tranDate] = @tranDateOrig
  AND [userId] = @userIdOrig
  AND [entry] = @entryOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MILOGH
	WHERE [tranDate] = @tranDate
	  AND [userId] = @userId
	  AND [entry] = @entry
return @@rowcount

