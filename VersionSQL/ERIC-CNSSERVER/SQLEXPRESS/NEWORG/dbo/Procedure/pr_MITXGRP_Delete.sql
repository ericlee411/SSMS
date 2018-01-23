/****** Object:  Procedure [dbo].[pr_MITXGRP_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MITXGRP_Delete
	@groupId nvarchar (12),
	@transType smallint
AS
DELETE dbo.MITXGRP
 WHERE [groupId] = @groupId
   AND [transType] = @transType
return @@rowcount 

