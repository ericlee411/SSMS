/****** Object:  Procedure [dbo].[pr_MISUPL_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MISUPL_Insert
	@suplId nvarchar (12),
	@shortName nvarchar (10),
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
	@ref nvarchar (20),
	@terms nvarchar (30),
	@volume numeric (20, 6),
	@ordCount int,
	@ordOvrCnt int,
	@daysTotal int,
	@daysLate int,
	@ordLstDate nvarchar (8),
	@poLst nvarchar (12),
	@cur nvarchar (3),
	@rateType nvarchar (2),
	@txGroup nvarchar (12),
	@taxCode1 nvarchar (12),
	@taxCode2 nvarchar (12),
	@taxCode3 nvarchar (12),
	@taxCode4 nvarchar (12),
	@taxCode5 nvarchar (12),
	@taxClass1 smallint,
	@taxClass2 smallint,
	@taxClass3 smallint,
	@taxClass4 smallint,
	@taxClass5 smallint,
	@taxReg1 nvarchar (20),
	@taxReg2 nvarchar (20),
	@taxReg3 nvarchar (20),
	@taxReg4 nvarchar (20),
	@taxReg5 nvarchar (20),
	@acctId nvarchar (45),
	@distId nvarchar (6),
	@shpVia nvarchar (20),
	@fob nvarchar (20),
	@freight nvarchar (20),
	@emailFmt smallint,
	@poPrefer smallint,
	@supStatus smallint,
	@email1 nvarchar (255),
	@email2 nvarchar (255),
	@website nvarchar (100),
	@notes nvarchar (2000),
	@fldXml text,
	@TSCol rowversion output 
AS
INSERT dbo.MISUPL
(	[suplId],
	[shortName],
	[name],
	[adr1],
	[adr2],
	[adr3],
	[adr4],
	[city],
	[state],
	[zip],
	[country],
	[phone],
	[fax],
	[contact],
	[ref],
	[terms],
	[volume],
	[ordCount],
	[ordOvrCnt],
	[daysTotal],
	[daysLate],
	[ordLstDate],
	[poLst],
	[cur],
	[rateType],
	[txGroup],
	[taxCode1],
	[taxCode2],
	[taxCode3],
	[taxCode4],
	[taxCode5],
	[taxClass1],
	[taxClass2],
	[taxClass3],
	[taxClass4],
	[taxClass5],
	[taxReg1],
	[taxReg2],
	[taxReg3],
	[taxReg4],
	[taxReg5],
	[acctId],
	[distId],
	[shpVia],
	[fob],
	[freight],
	[emailFmt],
	[poPrefer],
	[supStatus],
	[email1],
	[email2],
	[website],
	[notes],
	[fldXml]
)
VALUES
(
	@suplId,
	@shortName,
	@name,
	@adr1,
	@adr2,
	@adr3,
	@adr4,
	@city,
	@state,
	@zip,
	@country,
	@phone,
	@fax,
	@contact,
	@ref,
	@terms,
	@volume,
	@ordCount,
	@ordOvrCnt,
	@daysTotal,
	@daysLate,
	@ordLstDate,
	@poLst,
	@cur,
	@rateType,
	@txGroup,
	@taxCode1,
	@taxCode2,
	@taxCode3,
	@taxCode4,
	@taxCode5,
	@taxClass1,
	@taxClass2,
	@taxClass3,
	@taxClass4,
	@taxClass5,
	@taxReg1,
	@taxReg2,
	@taxReg3,
	@taxReg4,
	@taxReg5,
	@acctId,
	@distId,
	@shpVia,
	@fob,
	@freight,
	@emailFmt,
	@poPrefer,
	@supStatus,
	@email1,
	@email2,
	@website,
	@notes,
	@fldXml
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MISUPL
	  WHERE [suplId] = @suplId
return @@rowcount

