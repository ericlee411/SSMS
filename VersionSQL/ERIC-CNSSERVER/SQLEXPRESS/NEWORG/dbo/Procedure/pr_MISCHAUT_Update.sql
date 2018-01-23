/****** Object:  Procedure [dbo].[pr_MISCHAUT_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MISCHAUT_Update
	@schNum int,
	@schLine int,
	@uniqueId int,
	@schId nvarchar (6),
	@itemId nvarchar (24),
	@locId nvarchar (6),
	@dateISO nvarchar (8),
	@actISODate nvarchar (8),
	@qnt numeric (20, 6),
	@stock numeric (20, 6),
	@type smallint,
	@revId nvarchar (6),
	@levId smallint,
	@whenId smallint,
	@topType smallint,
	@topItem nvarchar (24),
	@topRevId nvarchar (6),
	@topQnt numeric (20, 6),
	@topISODate nvarchar (8),
	@POId nvarchar (12),
	@WOId nvarchar (12),
	@MOId nvarchar (15),
	@SOId nvarchar (256),
	@Detail int,
	@SrcLocId nvarchar (6),
	@topComment nvarchar (256),
	@ProcIndex smallint,
	@PORev smallint,
	@opCode nvarchar (24),
	@customer nvarchar (256),
	@subQnt numeric (20, 6),
	@schNumOrig int,
	@schLineOrig int,
	@uniqueIdOrig int
AS
UPDATE MISCHAUT
SET 	[schNum] = @schNum,
	[schLine] = @schLine,
	[uniqueId] = @uniqueId,
	[schId] = @schId,
	[itemId] = @itemId,
	[locId] = @locId,
	[dateISO] = @dateISO,
	[actISODate] = @actISODate,
	[qnt] = @qnt,
	[stock] = @stock,
	[type] = @type,
	[revId] = @revId,
	[levId] = @levId,
	[whenId] = @whenId,
	[topType] = @topType,
	[topItem] = @topItem,
	[topRevId] = @topRevId,
	[topQnt] = @topQnt,
	[topISODate] = @topISODate,
	[POId] = @POId,
	[WOId] = @WOId,
	[MOId] = @MOId,
	[SOId] = @SOId,
	[Detail] = @Detail,
	[SrcLocId] = @SrcLocId,
	[topComment] = @topComment,
	[ProcIndex] = @ProcIndex,
	[PORev] = @PORev,
	[opCode] = @opCode,
	[customer] = @customer,
	[subQnt] = @subQnt
WHERE [schNum] = @schNumOrig
  AND [schLine] = @schLineOrig
  AND [uniqueId] = @uniqueIdOrig
IF @@ROWCOUNT = 1
return @@rowcount

