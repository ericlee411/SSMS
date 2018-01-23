/****** Object:  Table [dbo].[MIWOH]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIWOH](
	[wohId] [nvarchar](12) NOT NULL,
	[lstMaintDt] [datetime] NULL,
	[descr] [nvarchar](60) NOT NULL,
	[creator] [nvarchar](8) NOT NULL,
	[releaser] [nvarchar](8) NOT NULL,
	[releaseDate] [nvarchar](8) NULL,
	[locId] [nvarchar](6) NULL,
	[jobId] [nvarchar](12) NULL,
	[status] [smallint] NOT NULL,
	[priority] [smallint] NOT NULL,
	[docPath] [nvarchar](260) NOT NULL,
	[oeOrdNo] [nvarchar](256) NOT NULL,
	[onHold] [bit] NOT NULL,
	[fldXml] [text] NOT NULL,
	[releaseDt]  AS (CONVERT([datetime],[releaseDate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIWOH_KEY_0] PRIMARY KEY CLUSTERED 
(
	[wohId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

ALTER TABLE [dbo].[MIWOH] ADD  DEFAULT (' ') FOR [wohId]
ALTER TABLE [dbo].[MIWOH] ADD  DEFAULT (' ') FOR [descr]
ALTER TABLE [dbo].[MIWOH] ADD  DEFAULT ('ADMIN') FOR [creator]
ALTER TABLE [dbo].[MIWOH] ADD  DEFAULT (' ') FOR [releaser]
ALTER TABLE [dbo].[MIWOH] ADD  DEFAULT ((0)) FOR [status]
ALTER TABLE [dbo].[MIWOH] ADD  DEFAULT ((2)) FOR [priority]
ALTER TABLE [dbo].[MIWOH] ADD  DEFAULT (' ') FOR [docPath]
ALTER TABLE [dbo].[MIWOH] ADD  DEFAULT (' ') FOR [oeOrdNo]
ALTER TABLE [dbo].[MIWOH] ADD  DEFAULT ((0)) FOR [onHold]
ALTER TABLE [dbo].[MIWOH] ADD  DEFAULT (' ') FOR [fldXml]
ALTER TABLE [dbo].[MIWOH]  WITH CHECK ADD FOREIGN KEY([jobId])
REFERENCES [dbo].[MIJOBH] ([jobId])
ALTER TABLE [dbo].[MIWOH]  WITH CHECK ADD FOREIGN KEY([locId])
REFERENCES [dbo].[MIDLOC] ([locId])
