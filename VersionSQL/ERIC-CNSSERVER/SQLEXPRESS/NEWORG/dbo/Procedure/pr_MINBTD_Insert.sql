/****** Object:  Procedure [dbo].[pr_MINBTD_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MINBTD_Insert
	@userId nvarchar (8),
	@batchId nvarchar (6),
	@entry int,
	@lineNbr smallint,
	@type smallint,
	@itemId nvarchar (24),
	@revId nvarchar (6),
	@comment nvarchar (60),
	@qty numeric (20, 6),
	@locId nvarchar (6),
	@tranDate nvarchar (8),
	@xvarLoc nvarchar (6),
	@status smallint,
	@SOId nvarchar (256),
	@Detail int,
	@extraData nvarchar (256),
	@TSCol rowversion output 
AS
INSERT dbo.MINBTD
(	[userId],
	[batchId],
	[entry],
	[lineNbr],
	[type],
	[itemId],
	[revId],
	[comment],
	[qty],
	[locId],
	[tranDate],
	[xvarLoc],
	[status],
	[SOId],
	[Detail],
	[extraData]
)
VALUES
(
	@userId,
	@batchId,
	@entry,
	@lineNbr,
	@type,
	@itemId,
	@revId,
	@comment,
	@qty,
	@locId,
	@tranDate,
	@xvarLoc,
	@status,
	@SOId,
	@Detail,
	@extraData
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MINBTD
	  WHERE [userId] = @userId
	   AND [batchId] = @batchId
	   AND [entry] = @entry
return @@rowcount

