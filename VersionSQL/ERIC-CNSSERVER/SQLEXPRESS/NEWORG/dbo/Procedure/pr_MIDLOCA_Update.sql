/****** Object:  Procedure [dbo].[pr_MIDLOCA_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIDLOCA_Update
	@locId nvarchar (6),
	@entry int,
	@lineNbr smallint,
	@altLocId nvarchar (6),
	@locIdOrig nvarchar (6),
	@entryOrig int,
	@TSCol rowversion output
AS
UPDATE MIDLOCA
SET 	[locId] = @locId,
	[entry] = @entry,
	[lineNbr] = @lineNbr,
	[altLocId] = @altLocId
WHERE [locId] = @locIdOrig
  AND [entry] = @entryOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIDLOCA
	WHERE [locId] = @locId
	  AND [entry] = @entry
return @@rowcount

