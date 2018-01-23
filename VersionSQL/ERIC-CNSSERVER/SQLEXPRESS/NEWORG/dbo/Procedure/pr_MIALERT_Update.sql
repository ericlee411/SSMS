/****** Object:  Procedure [dbo].[pr_MIALERT_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIALERT_Update
	@userId nvarchar (8),
	@alertId int,
	@name nvarchar (60),
	@table nvarchar (24),
	@query text,
	@email nvarchar (2000),
	@displayCols nvarchar (2000),
	@lastResults text,
	@formatType smallint,
	@emailFrom nvarchar (256),
	@enabled bit,
	@lastRun datetime,
	@message nvarchar (2000),
	@interval smallint,
	@dayOfMonth smallint,
	@day smallint,
	@timeOfDay datetime,
	@changesOnly bit,
	@trigger smallint,
	@minutes smallint,
	@userIdOrig nvarchar (8),
	@alertIdOrig int
AS
UPDATE MIALERT
SET 	[userId] = @userId,
	[alertId] = @alertId,
	[name] = @name,
	[table] = @table,
	[query] = @query,
	[email] = @email,
	[displayCols] = @displayCols,
	[lastResults] = @lastResults,
	[formatType] = @formatType,
	[emailFrom] = @emailFrom,
	[enabled] = @enabled,
	[lastRun] = @lastRun,
	[message] = @message,
	[interval] = @interval,
	[dayOfMonth] = @dayOfMonth,
	[day] = @day,
	[timeOfDay] = @timeOfDay,
	[changesOnly] = @changesOnly,
	[trigger] = @trigger,
	[minutes] = @minutes
WHERE [userId] = @userIdOrig
  AND [alertId] = @alertIdOrig
IF @@ROWCOUNT = 1
return @@rowcount

