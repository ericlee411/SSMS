/****** Object:  Procedure [dbo].[pr_MIICST_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIICST_Insert
	@itemId nvarchar (24),
	@transDate nvarchar (8),
	@seqNo int,
	@locId nvarchar (6),
	@type smallint,
	@tranType smallint,
	@suplId nvarchar (12),
	@poId nvarchar (12),
	@poRev smallint,
	@poDtl int,
	@reference nvarchar (60),
	@qRecd numeric (20, 6),
	@cost numeric (20, 6),
	@cLand numeric (20, 6),
	@qUsed numeric (20, 6),
	@qWip numeric (20, 6),
	@TSCol rowversion output 
AS
INSERT dbo.MIICST
(	[itemId],
	[transDate],
	[seqNo],
	[locId],
	[type],
	[tranType],
	[suplId],
	[poId],
	[poRev],
	[poDtl],
	[reference],
	[qRecd],
	[cost],
	[cLand],
	[qUsed],
	[qWip]
)
VALUES
(
	@itemId,
	@transDate,
	@seqNo,
	@locId,
	@type,
	@tranType,
	@suplId,
	@poId,
	@poRev,
	@poDtl,
	@reference,
	@qRecd,
	@cost,
	@cLand,
	@qUsed,
	@qWip
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIICST
	  WHERE [itemId] = @itemId
	   AND [transDate] = @transDate
	   AND [seqNo] = @seqNo
return @@rowcount

