/****** Object:  Procedure [dbo].[pr_MIPOHX_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIPOHX_Insert
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
	@TSCol rowversion output 
AS
INSERT dbo.MIPOHX
(	[pohId],
	[pohRev],
	[shpTo1],
	[shpTo2],
	[shpTo3],
	[shpTo4],
	[city],
	[state],
	[country],
	[zip],
	[hdrTxt1],
	[hdrTxt2],
	[hdrTxt3],
	[hdrTxt4],
	[billShpTo1],
	[billShpTo2],
	[billShpTo3],
	[billShpTo4],
	[billCty],
	[billSt],
	[billCntry],
	[billZip],
	[docPath],
	[notes]
)
VALUES
(
	@pohId,
	@pohRev,
	@shpTo1,
	@shpTo2,
	@shpTo3,
	@shpTo4,
	@city,
	@state,
	@country,
	@zip,
	@hdrTxt1,
	@hdrTxt2,
	@hdrTxt3,
	@hdrTxt4,
	@billShpTo1,
	@billShpTo2,
	@billShpTo3,
	@billShpTo4,
	@billCty,
	@billSt,
	@billCntry,
	@billZip,
	@docPath,
	@notes
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIPOHX
	  WHERE [pohId] = @pohId
	   AND [pohRev] = @pohRev
return @@rowcount

