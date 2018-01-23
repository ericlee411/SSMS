/****** Object:  Procedure [dbo].[pr_MIITEMA_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIITEMA_Insert
	@itemId nvarchar (24),
	@uniquifier int,
	@lineNbr smallint,
	@altItemId nvarchar (24),
	@TSCol rowversion output 
AS
INSERT dbo.MIITEMA
(	[itemId],
	[uniquifier],
	[lineNbr],
	[altItemId]
)
VALUES
(
	@itemId,
	@uniquifier,
	@lineNbr,
	@altItemId
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIITEMA
	  WHERE [itemId] = @itemId
	   AND [uniquifier] = @uniquifier
return @@rowcount

