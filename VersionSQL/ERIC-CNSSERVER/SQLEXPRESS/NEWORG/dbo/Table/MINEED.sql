/****** Object:  Table [dbo].[MINEED]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MINEED](
	[needSource] [int] NOT NULL,
	[needId] [nvarchar](15) NOT NULL,
	[needNo] [int] NOT NULL,
	[initType] [int] NOT NULL,
	[descr] [nvarchar](60) NOT NULL,
	[beginDate] [nvarchar](8) NULL,
	[endDate] [nvarchar](8) NULL,
	[status] [int] NOT NULL,
	[userId] [nvarchar](8) NULL,
	[beginDt]  AS (CONVERT([datetime],[beginDate])),
	[endDt]  AS (CONVERT([datetime],[endDate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MINEED_KEY_0] PRIMARY KEY CLUSTERED 
(
	[needSource] ASC,
	[needId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MINEED] ADD  DEFAULT ((0)) FOR [needSource]
ALTER TABLE [dbo].[MINEED] ADD  DEFAULT (' ') FOR [needId]
ALTER TABLE [dbo].[MINEED] ADD  DEFAULT ((0)) FOR [needNo]
ALTER TABLE [dbo].[MINEED] ADD  DEFAULT ((0)) FOR [initType]
ALTER TABLE [dbo].[MINEED] ADD  DEFAULT (' ') FOR [descr]
ALTER TABLE [dbo].[MINEED] ADD  DEFAULT ((0)) FOR [status]
ALTER TABLE [dbo].[MINEED]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[MIUSER] ([userId])
