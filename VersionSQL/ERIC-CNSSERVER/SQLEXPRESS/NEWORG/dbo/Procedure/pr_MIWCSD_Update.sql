/****** Object:  Procedure [dbo].[pr_MIWCSD_Update]    Committed by VersionSQL https://www.versionsql.com ******/



CREATE PROCEDURE dbo.pr_MIWCSD_Update
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
	@shiftIdOrig nvarchar (12),
	@entryOrig int,
	@TSCol rowversion output
AS
UPDATE MIWCSD
SET 	[shiftId] = @shiftId,
	[entry] = @entry,
	[lineNbr] = @lineNbr,
	[descr] = @descr,
	[startISOTime] = @startISOTime,
	[stopISOTime] = @stopISOTime,
	[brkStartISOTime] = @brkStartISOTime,
	[brkStopISOTime] = @brkStopISOTime,
	[sunAvail] = @sunAvail,
	[monAvail] = @monAvail,
	[tueAvail] = @tueAvail,
	[wedAvail] = @wedAvail,
	[thuAvail] = @thuAvail,
	[friAvail] = @friAvail,
	[satAvail] = @satAvail,
	[duration] = @duration,
	[capacity] = @capacity,
	[type] = @type
WHERE [shiftId] = @shiftIdOrig
  AND [entry] = @entryOrig
  AND rowVer = @TSCol

IF @@ROWCOUNT = 1
	SELECT @TSCol = rowVer FROM MIWCSD
	WHERE [shiftId] = @shiftId
	  AND [entry] = @entry
return @@rowcount

