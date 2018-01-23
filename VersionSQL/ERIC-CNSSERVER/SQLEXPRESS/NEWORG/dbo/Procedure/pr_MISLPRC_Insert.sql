/****** Object:  Procedure [dbo].[pr_MISLPRC_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MISLPRC_Insert
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
	@descr nvarchar (60)
AS
INSERT dbo.MISLPRC
(	[lineNbr],
	[itemId],
	[lotId],
	[prntItemId],
	[prntLotId],
	[locId],
	[binId],
	[qStk],
	[qWip],
	[recQty],
	[seqNo],
	[xtype],
	[expireDate],
	[rcvdDate],
	[autoCreate],
	[descr]
)
VALUES
(
	@lineNbr,
	@itemId,
	@lotId,
	@prntItemId,
	@prntLotId,
	@locId,
	@binId,
	@qStk,
	@qWip,
	@recQty,
	@seqNo,
	@xtype,
	@expireDate,
	@rcvdDate,
	@autoCreate,
	@descr
)
IF @@ROWCOUNT = 1
return @@rowcount

