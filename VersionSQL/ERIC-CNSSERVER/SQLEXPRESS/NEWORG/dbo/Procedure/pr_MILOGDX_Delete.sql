/****** Object:  Procedure [dbo].[pr_MILOGDX_Delete]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MILOGDX_Delete
	@tranDate nvarchar (8),
	@userId nvarchar (8),
	@entry int,
	@detail int,
	@dtype smallint
AS
DELETE dbo.MILOGDX
 WHERE [tranDate] = @tranDate
   AND [userId] = @userId
   AND [entry] = @entry
   AND [detail] = @detail
   AND [dtype] = @dtype
return @@rowcount 

