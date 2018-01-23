/****** Object:  Table [dbo].[MIPIBH]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIPIBH](
	[userId] [nvarchar](8) NOT NULL,
	[batchId] [nvarchar](6) NOT NULL,
	[bType] [smallint] NOT NULL,
	[descr] [nvarchar](60) NOT NULL,
	[createdDt] [datetime] NULL,
	[lstEditDt] [datetime] NULL,
	[status] [smallint] NOT NULL,
	[lstCheckDt] [datetime] NULL,
	[lstPostDt] [datetime] NULL,
	[selected] [bit] NOT NULL,
	[showRecorded] [bit] NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIPIBH_KEY_0] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[batchId] ASC,
	[bType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MIPIBH] ADD  DEFAULT ('000000') FOR [batchId]
ALTER TABLE [dbo].[MIPIBH] ADD  DEFAULT ((0)) FOR [bType]
ALTER TABLE [dbo].[MIPIBH] ADD  DEFAULT (' ') FOR [descr]
ALTER TABLE [dbo].[MIPIBH] ADD  DEFAULT ((0)) FOR [status]
ALTER TABLE [dbo].[MIPIBH] ADD  DEFAULT ((0)) FOR [selected]
ALTER TABLE [dbo].[MIPIBH] ADD  DEFAULT ((0)) FOR [showRecorded]
ALTER TABLE [dbo].[MIPIBH]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[MIUSER] ([userId])
