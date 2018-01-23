/****** Object:  Procedure [dbo].[pr_MIDLOC_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIDLOC_Update
	@locId nvarchar (6),
	@locName nvarchar (60),
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
	@acctSet nvarchar (8),
	@glSeg nvarchar (15),
	@icLoc nvarchar (256),
	@binMeth smallint,
	@exclude bit,
	@status smallint,
	@fldXml text,
	@locIdOrig nvarchar (6),
	@TSCol rowversion output
AS
UPDATE MIDLOC
SET 	[locId] = @locId,
	[locName] = @locName,
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
	[ref] = @ref,
	[acctSet] = @acctSet,
	[glSeg] = @glSeg,
	[icLoc] = @icLoc,
	[binMeth] = @binMeth,
	[exclude] = @exclude,
	[status] = @status,
	[fldXml] = @fldXml
WHERE [locId] = @locIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIDLOC
	WHERE [locId] = @locId
return @@rowcount

