/****** Object:  Procedure [dbo].[pr_MIPOHX_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIPOHX_Update
	@pohId nvarchar (12),
	@pohRev smallint,
	@shpTo1 nvarchar (60),
	@shpTo2 nvarchar (60),
	@shpTo3 nvarchar (60),
	@shpTo4 nvarchar (60),
	@city nvarchar (30),
	@state nvarchar (30),
	@country nvarchar (30),
	@zip nvarchar (20),
	@hdrTxt1 nvarchar (30),
	@hdrTxt2 nvarchar (30),
	@hdrTxt3 nvarchar (30),
	@hdrTxt4 nvarchar (30),
	@billShpTo1 nvarchar (60),
	@billShpTo2 nvarchar (60),
	@billShpTo3 nvarchar (60),
	@billShpTo4 nvarchar (60),
	@billCty nvarchar (30),
	@billSt nvarchar (30),
	@billCntry nvarchar (30),
	@billZip nvarchar (20),
	@docPath nvarchar (256),
	@notes nvarchar (2000),
	@pohIdOrig nvarchar (12),
	@pohRevOrig smallint,
	@TSCol rowversion output
AS
UPDATE MIPOHX
SET 	[pohId] = @pohId,
	[pohRev] = @pohRev,
	[shpTo1] = @shpTo1,
	[shpTo2] = @shpTo2,
	[shpTo3] = @shpTo3,
	[shpTo4] = @shpTo4,
	[city] = @city,
	[state] = @state,
	[country] = @country,
	[zip] = @zip,
	[hdrTxt1] = @hdrTxt1,
	[hdrTxt2] = @hdrTxt2,
	[hdrTxt3] = @hdrTxt3,
	[hdrTxt4] = @hdrTxt4,
	[billShpTo1] = @billShpTo1,
	[billShpTo2] = @billShpTo2,
	[billShpTo3] = @billShpTo3,
	[billShpTo4] = @billShpTo4,
	[billCty] = @billCty,
	[billSt] = @billSt,
	[billCntry] = @billCntry,
	[billZip] = @billZip,
	[docPath] = @docPath,
	[notes] = @notes
WHERE [pohId] = @pohIdOrig
  AND [pohRev] = @pohRevOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIPOHX
	WHERE [pohId] = @pohId
	  AND [pohRev] = @pohRev
return @@rowcount

