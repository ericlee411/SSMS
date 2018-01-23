/****** Object:  Table [dbo].[MIWCSD]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIWCSD](
	[shiftId] [nvarchar](12) NOT NULL,
	[entry] [int] NOT NULL,
	[lineNbr] [smallint] NOT NULL,
	[descr] [nvarchar](60) NOT NULL,
	[startISOTime] [nvarchar](23) NULL,
	[stopISOTime] [nvarchar](23) NULL,
	[brkStartISOTime] [nvarchar](23) NULL,
	[brkStopISOTime] [nvarchar](23) NULL,
	[sunAvail] [bit] NOT NULL,
	[monAvail] [bit] NOT NULL,
	[tueAvail] [bit] NOT NULL,
	[wedAvail] [bit] NOT NULL,
	[thuAvail] [bit] NOT NULL,
	[friAvail] [bit] NOT NULL,
	[satAvail] [bit] NOT NULL,
	[duration] [numeric](20, 6) NOT NULL,
	[capacity] [numeric](20, 6) NOT NULL,
	[type] [smallint] NOT NULL,
	[startTime]  AS (CONVERT([datetime],[startISOTime])),
	[stopTime]  AS (CONVERT([datetime],[stopISOTime])),
	[brkStartTime]  AS (CONVERT([datetime],[brkStartISOTime])),
	[brkStopTime]  AS (CONVERT([datetime],[brkStopISOTime])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIWCSD_KEY_0] PRIMARY KEY CLUSTERED 
(
	[shiftId] ASC,
	[entry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MIWCSD] ADD  DEFAULT (' ') FOR [shiftId]
ALTER TABLE [dbo].[MIWCSD] ADD  DEFAULT ((0)) FOR [entry]
ALTER TABLE [dbo].[MIWCSD] ADD  DEFAULT ((0)) FOR [lineNbr]
ALTER TABLE [dbo].[MIWCSD] ADD  DEFAULT (' ') FOR [descr]
ALTER TABLE [dbo].[MIWCSD] ADD  DEFAULT ('1900-01-01T08:00:00') FOR [startISOTime]
ALTER TABLE [dbo].[MIWCSD] ADD  DEFAULT ('1900-01-01T17:00:00') FOR [stopISOTime]
ALTER TABLE [dbo].[MIWCSD] ADD  DEFAULT ((0)) FOR [sunAvail]
ALTER TABLE [dbo].[MIWCSD] ADD  DEFAULT ((1)) FOR [monAvail]
ALTER TABLE [dbo].[MIWCSD] ADD  DEFAULT ((1)) FOR [tueAvail]
ALTER TABLE [dbo].[MIWCSD] ADD  DEFAULT ((1)) FOR [wedAvail]
ALTER TABLE [dbo].[MIWCSD] ADD  DEFAULT ((1)) FOR [thuAvail]
ALTER TABLE [dbo].[MIWCSD] ADD  DEFAULT ((1)) FOR [friAvail]
ALTER TABLE [dbo].[MIWCSD] ADD  DEFAULT ((0)) FOR [satAvail]
ALTER TABLE [dbo].[MIWCSD] ADD  DEFAULT ((9)) FOR [duration]
ALTER TABLE [dbo].[MIWCSD] ADD  DEFAULT ((45)) FOR [capacity]
ALTER TABLE [dbo].[MIWCSD] ADD  DEFAULT ((0)) FOR [type]
ALTER TABLE [dbo].[MIWCSD]  WITH CHECK ADD  CONSTRAINT [FK_MIWCSD_MIWCSH] FOREIGN KEY([shiftId])
REFERENCES [dbo].[MIWCSH] ([shiftId])
ON DELETE CASCADE
ALTER TABLE [dbo].[MIWCSD] CHECK CONSTRAINT [FK_MIWCSD_MIWCSH]
