/****** Object:  Table [dbo].[MIMTBH]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIMTBH](
	[userId] [nvarchar](8) NOT NULL,
	[batchId] [nvarchar](6) NOT NULL,
	[descr] [nvarchar](60) NOT NULL,
	[createdDt] [datetime] NULL,
	[lstEditDt] [datetime] NULL,
	[status] [smallint] NOT NULL,
	[lstCheckDt] [datetime] NULL,
	[lstPostDt] [datetime] NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIMTBH_KEY_0] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[batchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MIMTBH] ADD  DEFAULT ('000000') FOR [batchId]
ALTER TABLE [dbo].[MIMTBH] ADD  DEFAULT (' ') FOR [descr]
ALTER TABLE [dbo].[MIMTBH] ADD  DEFAULT ((0)) FOR [status]
ALTER TABLE [dbo].[MIMTBH]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[MIUSER] ([userId])
