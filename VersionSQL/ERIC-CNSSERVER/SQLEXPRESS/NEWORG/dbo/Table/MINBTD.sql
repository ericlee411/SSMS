/****** Object:  Table [dbo].[MINBTD]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MINBTD](
	[userId] [nvarchar](8) NOT NULL,
	[batchId] [nvarchar](6) NOT NULL,
	[entry] [int] NOT NULL,
	[lineNbr] [smallint] NOT NULL,
	[type] [smallint] NOT NULL,
	[itemId] [nvarchar](24) NULL,
	[revId] [nvarchar](6) NULL,
	[comment] [nvarchar](60) NOT NULL,
	[qty] [numeric](20, 6) NOT NULL,
	[locId] [nvarchar](6) NULL,
	[tranDate] [nvarchar](8) NULL,
	[xvarLoc] [nvarchar](6) NULL,
	[status] [smallint] NOT NULL,
	[SOId] [nvarchar](256) NULL,
	[Detail] [int] NOT NULL,
	[extraData] [nvarchar](256) NOT NULL,
	[tranDt]  AS (CONVERT([datetime],[tranDate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MINBTD_KEY_0] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[batchId] ASC,
	[entry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MINBTD] ADD  DEFAULT (' ') FOR [batchId]
ALTER TABLE [dbo].[MINBTD] ADD  DEFAULT ((0)) FOR [entry]
ALTER TABLE [dbo].[MINBTD] ADD  DEFAULT ((0)) FOR [lineNbr]
ALTER TABLE [dbo].[MINBTD] ADD  DEFAULT ((0)) FOR [type]
ALTER TABLE [dbo].[MINBTD] ADD  DEFAULT (' ') FOR [itemId]
ALTER TABLE [dbo].[MINBTD] ADD  DEFAULT (' ') FOR [comment]
ALTER TABLE [dbo].[MINBTD] ADD  DEFAULT ((0)) FOR [qty]
ALTER TABLE [dbo].[MINBTD] ADD  DEFAULT (' ') FOR [locId]
ALTER TABLE [dbo].[MINBTD] ADD  DEFAULT ((0)) FOR [status]
ALTER TABLE [dbo].[MINBTD] ADD  DEFAULT (' ') FOR [SOId]
ALTER TABLE [dbo].[MINBTD] ADD  DEFAULT ((0)) FOR [Detail]
ALTER TABLE [dbo].[MINBTD] ADD  DEFAULT (' ') FOR [extraData]
ALTER TABLE [dbo].[MINBTD]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[MIUSER] ([userId])
ALTER TABLE [dbo].[MINBTD]  WITH CHECK ADD  CONSTRAINT [FK_MINBTD_MINBTH] FOREIGN KEY([userId], [batchId])
REFERENCES [dbo].[MINBTH] ([userId], [batchId])
ON DELETE CASCADE
ALTER TABLE [dbo].[MINBTD] CHECK CONSTRAINT [FK_MINBTD_MINBTH]
