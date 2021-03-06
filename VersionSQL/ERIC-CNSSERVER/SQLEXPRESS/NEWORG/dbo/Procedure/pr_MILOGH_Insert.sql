/****** Object:  Procedure [dbo].[pr_MILOGH_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MILOGH_Insert
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
	@TSCol rowversion output 
AS
INSERT dbo.MILOGH
(	[tranDate],
	[userId],
	[entry],
	[type],
	[itemId],
	[revId],
	[comment],
	[qty],
	[jobId],
	[locId],
	[binId],
	[glFlag],
	[jrnlNo],
	[xvarItemId],
	[xvarToLoc],
	[xvarBinId],
	[xvarOpCode],
	[xvarSuplId],
	[xvarPOId],
	[xvarPORev],
	[xvarWOId],
	[xvarMOId],
	[xvarDtl],
	[xvarNoStk],
	[xvarInitVal],
	[xvarFinalVal],
	[xvarSalesId],
	[xvarSOId],
	[xvarSOLn],
	[xvarBillId],
	[xvarSalesLoc]
)
VALUES
(
	@tranDate,
	@userId,
	@entry,
	@type,
	@itemId,
	@revId,
	@comment,
	@qty,
	@jobId,
	@locId,
	@binId,
	@glFlag,
	@jrnlNo,
	@xvarItemId,
	@xvarToLoc,
	@xvarBinId,
	@xvarOpCode,
	@xvarSuplId,
	@xvarPOId,
	@xvarPORev,
	@xvarWOId,
	@xvarMOId,
	@xvarDtl,
	@xvarNoStk,
	@xvarInitVal,
	@xvarFinalVal,
	@xvarSalesId,
	@xvarSOId,
	@xvarSOLn,
	@xvarBillId,
	@xvarSalesLoc
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MILOGH
	  WHERE [tranDate] = @tranDate
	   AND [userId] = @userId
	   AND [entry] = @entry
return @@rowcount

