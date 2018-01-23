/****** Object:  Table [dbo].[MISHOPH]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MISHOPH](
	[userId] [nvarchar](8) NOT NULL,
	[batchId] [nvarchar](6) NOT NULL,
	[descr] [nvarchar](60) NOT NULL,
	[createdDt] [datetime] NULL,
	[lstEditDt] [datetime] NULL,
	[lstPostDt] [datetime] NULL,
	[status] [smallint] NOT NULL,
	[pCount] [smallint] NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MISHOPH_KEY_0] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[batchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MISHOPH] ADD  DEFAULT ('000000') FOR [batchId]
ALTER TABLE [dbo].[MISHOPH] ADD  DEFAULT (' ') FOR [descr]
ALTER TABLE [dbo].[MISHOPH] ADD  DEFAULT ((0)) FOR [status]
ALTER TABLE [dbo].[MISHOPH] ADD  DEFAULT ((0)) FOR [pCount]
ALTER TABLE [dbo].[MISHOPH]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[MIUSER] ([userId])
