/****** Object:  Table [dbo].[MIALERT]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIALERT](
	[userId] [nvarchar](8) NOT NULL,
	[alertId] [int] NOT NULL,
	[name] [nvarchar](60) NOT NULL,
	[table] [nvarchar](24) NOT NULL,
	[query] [text] NULL,
	[email] [nvarchar](2000) NOT NULL,
	[displayCols] [nvarchar](2000) NOT NULL,
	[lastResults] [text] NULL,
	[formatType] [smallint] NOT NULL,
	[emailFrom] [nvarchar](256) NOT NULL,
	[enabled] [bit] NOT NULL,
	[lastRun] [datetime] NULL,
	[message] [nvarchar](2000) NOT NULL,
	[interval] [smallint] NOT NULL,
	[dayOfMonth] [smallint] NOT NULL,
	[day] [smallint] NOT NULL,
	[timeOfDay] [datetime] NULL,
	[changesOnly] [bit] NOT NULL,
	[trigger] [smallint] NOT NULL,
	[minutes] [smallint] NOT NULL,
 CONSTRAINT [PK_MIALERT_KEY_0] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[alertId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

ALTER TABLE [dbo].[MIALERT] ADD  DEFAULT (' ') FOR [userId]
ALTER TABLE [dbo].[MIALERT] ADD  DEFAULT ((0)) FOR [alertId]
ALTER TABLE [dbo].[MIALERT] ADD  DEFAULT (' ') FOR [name]
ALTER TABLE [dbo].[MIALERT] ADD  DEFAULT (' ') FOR [table]
ALTER TABLE [dbo].[MIALERT] ADD  DEFAULT (' ') FOR [email]
ALTER TABLE [dbo].[MIALERT] ADD  DEFAULT (' ') FOR [displayCols]
ALTER TABLE [dbo].[MIALERT] ADD  DEFAULT ((0)) FOR [formatType]
ALTER TABLE [dbo].[MIALERT] ADD  DEFAULT (' ') FOR [emailFrom]
ALTER TABLE [dbo].[MIALERT] ADD  DEFAULT ((1)) FOR [enabled]
ALTER TABLE [dbo].[MIALERT] ADD  DEFAULT (' ') FOR [message]
ALTER TABLE [dbo].[MIALERT] ADD  DEFAULT ((0)) FOR [interval]
ALTER TABLE [dbo].[MIALERT] ADD  DEFAULT ((1)) FOR [dayOfMonth]
ALTER TABLE [dbo].[MIALERT] ADD  DEFAULT ((0)) FOR [day]
ALTER TABLE [dbo].[MIALERT] ADD  DEFAULT ((0)) FOR [changesOnly]
ALTER TABLE [dbo].[MIALERT] ADD  DEFAULT ((0)) FOR [trigger]
ALTER TABLE [dbo].[MIALERT] ADD  DEFAULT ((10)) FOR [minutes]
