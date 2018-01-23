/****** Object:  Procedure [dbo].[pr_MIALERT_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIALERT_Insert
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
	@minutes smallint
AS
INSERT dbo.MIALERT
(	[userId],
	[alertId],
	[name],
	[table],
	[query],
	[email],
	[displayCols],
	[lastResults],
	[formatType],
	[emailFrom],
	[enabled],
	[lastRun],
	[message],
	[interval],
	[dayOfMonth],
	[day],
	[timeOfDay],
	[changesOnly],
	[trigger],
	[minutes]
)
VALUES
(
	@userId,
	@alertId,
	@name,
	@table,
	@query,
	@email,
	@displayCols,
	@lastResults,
	@formatType,
	@emailFrom,
	@enabled,
	@lastRun,
	@message,
	@interval,
	@dayOfMonth,
	@day,
	@timeOfDay,
	@changesOnly,
	@trigger,
	@minutes
)
IF @@ROWCOUNT = 1
return @@rowcount

