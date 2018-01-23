/****** Object:  Procedure [dbo].[pr_MIFLDS_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIFLDS_Update
	@tblLoc smallint,
	@fldId int,
	@type smallint,
	@label nvarchar (30),
	@pList text,
	@decimal smallint,
	@mask nvarchar (40),
	@dflt text,
	@dispOrd int,
	@tblLocOrig smallint,
	@fldIdOrig int,
	@TSCol rowversion output
AS
UPDATE MIFLDS
SET 	[tblLoc] = @tblLoc,
	[fldId] = @fldId,
	[type] = @type,
	[label] = @label,
	[pList] = @pList,
	[decimal] = @decimal,
	[mask] = @mask,
	[dflt] = @dflt,
	[dispOrd] = @dispOrd
WHERE [tblLoc] = @tblLocOrig
  AND [fldId] = @fldIdOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIFLDS
	WHERE [tblLoc] = @tblLoc
	  AND [fldId] = @fldId
return @@rowcount

