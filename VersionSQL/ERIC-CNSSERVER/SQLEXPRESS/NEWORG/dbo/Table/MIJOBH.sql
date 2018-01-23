/****** Object:  Table [dbo].[MIJOBH]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIJOBH](
	[jobId] [nvarchar](12) NOT NULL,
	[jobName] [nvarchar](60) NOT NULL,
	[class] [nvarchar](8) NULL,
	[segId] [nvarchar](15) NOT NULL,
	[status] [smallint] NOT NULL,
	[docPath] [nvarchar](260) NOT NULL,
	[fldXml] [text] NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIJOBH_KEY_0] PRIMARY KEY CLUSTERED 
(
	[jobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

ALTER TABLE [dbo].[MIJOBH] ADD  DEFAULT (' ') FOR [jobId]
ALTER TABLE [dbo].[MIJOBH] ADD  DEFAULT (' ') FOR [jobName]
ALTER TABLE [dbo].[MIJOBH] ADD  DEFAULT (' ') FOR [segId]
ALTER TABLE [dbo].[MIJOBH] ADD  DEFAULT ((0)) FOR [status]
ALTER TABLE [dbo].[MIJOBH] ADD  DEFAULT (' ') FOR [docPath]
ALTER TABLE [dbo].[MIJOBH] ADD  DEFAULT (' ') FOR [fldXml]
ALTER TABLE [dbo].[MIJOBH]  WITH CHECK ADD FOREIGN KEY([class])
REFERENCES [dbo].[MIACCT] ([setId])
