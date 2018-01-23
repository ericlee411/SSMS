/****** Object:  Procedure [dbo].[pr_MIBINQ_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIBINQ_Delete
	@locId nvarchar (6),
	@binId nvarchar (24)
AS
DELETE dbo.MIBINQ
 WHERE [locId] = @locId
   AND [binId] = @binId
return @@rowcount 

