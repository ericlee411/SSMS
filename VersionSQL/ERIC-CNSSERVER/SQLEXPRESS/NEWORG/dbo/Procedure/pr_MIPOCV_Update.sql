/****** Object:  Procedure [dbo].[pr_MIPOCV_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIPOCV_Update
	@pohId nvarchar (12),
	@pohRev smallint,
	@poSuplId nvarchar (12),
	@name nvarchar (60),
	@adr1 nvarchar (60),
	@adr2 nvarchar (60),
	@adr3 nvarchar (60),
	@adr4 nvarchar (60),
	@city nvarchar (30),
	@state nvarchar (30),
	@zip nvarchar (20),
	@country nvarchar (30),
	@phone nvarchar (30),
	@fax nvarchar (30),
	@contact nvarchar (60),
	@email nvarchar (50),
	@terms nvarchar (6),
	@curId nvarchar (3),
	@rateType nvarchar (2),
	@rateDate nvarchar (8),
	@rate numeric (20, 6),
	@spread numeric (20, 6),
	@dateMatch int,
	@rateOper int,
	@txGroup nvarchar (12),
	@taxCode1 nvarchar (12),
	@taxCode2 nvarchar (12),
	@taxCode3 nvarchar (12),
	@taxCode4 nvarchar (12),
	@taxCode5 nvarchar (12),
	@taxClass1 int,
	@taxClass2 int,
	@taxClass3 int,
	@taxClass4 int,
	@taxClass5 int,
	@pohIdOrig nvarchar (12),
	@pohRevOrig smallint,
	@poSuplIdOrig nvarchar (12),
	@TSCol rowversion output
AS
UPDATE MIPOCV
SET 	[pohId] = @pohId,
	[pohRev] = @pohRev,
	[poSuplId] = @poSuplId,
	[name] = @name,
	[adr1] = @adr1,
	[adr2] = @adr2,
	[adr3] = @adr3,
	[adr4] = @adr4,
	[city] = @city,
	[state] = @state,
	[zip] = @zip,
	[country] = @country,
	[phone] = @phone,
	[fax] = @fax,
	[contact] = @contact,
	[email] = @email,
	[terms] = @terms,
	[curId] = @curId,
	[rateType] = @rateType,
	[rateDate] = @rateDate,
	[rate] = @rate,
	[spread] = @spread,
	[dateMatch] = @dateMatch,
	[rateOper] = @rateOper,
	[txGroup] = @txGroup,
	[taxCode1] = @taxCode1,
	[taxCode2] = @taxCode2,
	[taxCode3] = @taxCode3,
	[taxCode4] = @taxCode4,
	[taxCode5] = @taxCode5,
	[taxClass1] = @taxClass1,
	[taxClass2] = @taxClass2,
	[taxClass3] = @taxClass3,
	[taxClass4] = @taxClass4,
	[taxClass5] = @taxClass5
WHERE [pohId] = @pohIdOrig
  AND [pohRev] = @pohRevOrig
  AND [poSuplId] = @poSuplIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIPOCV
	WHERE [pohId] = @pohId
	  AND [pohRev] = @pohRev
	  AND [poSuplId] = @poSuplId
return @@rowcount

