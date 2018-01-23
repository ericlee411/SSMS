/****** Object:  Procedure [dbo].[pr_MIFLDS_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIFLDS_Insert
	@tblLoc smallint,
	@fldId int,
	@type smallint,
	@label nvarchar (30),
	@pList text,
	@decimal smallint,
	@mask nvarchar (40),
	@dflt text,
	@dispOrd int,
	@TSCol rowversion output 
AS
INSERT dbo.MIFLDS
(	[tblLoc],
	[fldId],
	[type],
	[label],
	[pList],
	[decimal],
	[mask],
	[dflt],
	[dispOrd]
)
VALUES
(
	@tblLoc,
	@fldId,
	@type,
	@label,
	@pList,
	@decimal,
	@mask,
	@dflt,
	@dispOrd
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIFLDS
	  WHERE [tblLoc] = @tblLoc
	   AND [fldId] = @fldId
return @@rowcount

