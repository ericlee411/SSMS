/****** Object:  Table [dbo].[MINBTH]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MINBTH](
	[userId] [nvarchar](8) NOT NULL,
	[batchId] [nvarchar](6) NOT NULL,
	[descr] [nvarchar](60) NOT NULL,
	[createDt] [datetime] NULL,
	[lstEditDt] [datetime] NULL,
	[status] [smallint] NOT NULL,
	[lstPostDt] [datetime] NULL,
	[pCount] [smallint] NOT NULL,
	[baseDate] [nvarchar](8) NULL,
	[startDate] [nvarchar](8) NULL,
	[baseDt]  AS (CONVERT([datetime],[baseDate])),
	[startDt]  AS (CONVERT([datetime],[startDate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MINBTH_KEY_0] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[batchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MINBTH] ADD  DEFAULT (' ') FOR [batchId]
ALTER TABLE [dbo].[MINBTH] ADD  DEFAULT (' ') FOR [descr]
ALTER TABLE [dbo].[MINBTH] ADD  DEFAULT ((0)) FOR [status]
ALTER TABLE [dbo].[MINBTH] ADD  DEFAULT ((0)) FOR [pCount]
ALTER TABLE [dbo].[MINBTH]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[MIUSER] ([userId])
