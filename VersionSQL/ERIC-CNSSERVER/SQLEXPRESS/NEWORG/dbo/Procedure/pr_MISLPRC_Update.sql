/****** Object:  Procedure [dbo].[pr_MISLPRC_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISLPRC_Update
	@lineNbr smallint,
	@itemId nvarchar (24),
	@lotId nvarchar (40),
	@prntItemId nvarchar (24),
	@prntLotId nvarchar (40),
	@locId nvarchar (6),
	@binId nvarchar (24),
	@qStk numeric (20, 6),
	@qWip numeric (20, 6),
	@recQty numeric (20, 6),
	@seqNo int,
	@xtype smallint,
	@expireDate nvarchar (8),
	@rcvdDate nvarchar (8),
	@autoCreate bit,
	@descr nvarchar (60),
	@lineNbrOrig smallint
AS
UPDATE MISLPRC
SET 	[lineNbr] = @lineNbr,
	[itemId] = @itemId,
	[lotId] = @lotId,
	[prntItemId] = @prntItemId,
	[prntLotId] = @prntLotId,
	[locId] = @locId,
	[binId] = @binId,
	[qStk] = @qStk,
	[qWip] = @qWip,
	[recQty] = @recQty,
	[seqNo] = @seqNo,
	[xtype] = @xtype,
	[expireDate] = @expireDate,
	[rcvdDate] = @rcvdDate,
	[autoCreate] = @autoCreate,
	[descr] = @descr
WHERE [lineNbr] = @lineNbrOrig
IF @@ROWCOUNT = 1
return @@rowcount

