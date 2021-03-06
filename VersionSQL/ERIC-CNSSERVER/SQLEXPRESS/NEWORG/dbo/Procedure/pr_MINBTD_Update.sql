/****** Object:  Procedure [dbo].[pr_MINBTD_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MINBTD_Update
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
	@userIdOrig nvarchar (8),
	@batchIdOrig nvarchar (6),
	@entryOrig int,
	@TSCol rowversion output
AS
UPDATE MINBTD
SET 	[userId] = @userId,
	[batchId] = @batchId,
	[entry] = @entry,
	[lineNbr] = @lineNbr,
	[type] = @type,
	[itemId] = @itemId,
	[revId] = @revId,
	[comment] = @comment,
	[qty] = @qty,
	[locId] = @locId,
	[tranDate] = @tranDate,
	[xvarLoc] = @xvarLoc,
	[status] = @status,
	[SOId] = @SOId,
	[Detail] = @Detail,
	[extraData] = @extraData
WHERE [userId] = @userIdOrig
  AND [batchId] = @batchIdOrig
  AND [entry] = @entryOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MINBTD
	WHERE [userId] = @userId
	  AND [batchId] = @batchId
	  AND [entry] = @entry
return @@rowcount

