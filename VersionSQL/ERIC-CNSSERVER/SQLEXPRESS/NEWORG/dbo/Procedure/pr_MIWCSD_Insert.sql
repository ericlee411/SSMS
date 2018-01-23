/****** Object:  Procedure [dbo].[pr_MIWCSD_Insert]    Committed by VersionSQL https://www.versionsql.com ******/




CREATE PROCEDURE dbo.pr_MIWCSD_Insert
	@shiftId nvarchar (12),
	@entry int,
	@lineNbr smallint,
	@descr nvarchar (60),
	@startISOTime nvarchar (23),
	@stopISOTime nvarchar (23),
	@brkStartISOTime nvarchar (23),
	@brkStopISOTime nvarchar (23),
	@sunAvail bit,
	@monAvail bit,
	@tueAvail bit,
	@wedAvail bit,
	@thuAvail bit,
	@friAvail bit,
	@satAvail bit,
	@duration numeric (20, 6),
	@capacity numeric (20, 6),
	@type smallint,
	@TSCol rowversion output 
AS
INSERT dbo.MIWCSD
(	[shiftId],
	[entry],
	[lineNbr],
	[descr],
	[startISOTime],
	[stopISOTime],
	[brkStartISOTime],
	[brkStopISOTime],
	[sunAvail],
	[monAvail],
	[tueAvail],
	[wedAvail],
	[thuAvail],
	[friAvail],
	[satAvail],
	[duration],
	[capacity],
	[type]
)
VALUES
(
	@shiftId,
	@entry,
	@lineNbr,
	@descr,
	@startISOTime,
	@stopISOTime,
	@brkStartISOTime,
	@brkStopISOTime,
	@sunAvail,
	@monAvail,
	@tueAvail,
	@wedAvail,
	@thuAvail,
	@friAvail,
	@satAvail,
	@duration,
	@capacity,
	@type
)
IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer
	  FROM MIWCSD
	  WHERE [shiftId] = @shiftId
	   AND [entry] = @entry
return @@rowcount

