/****** Object:  Table [dbo].[MIADJH]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIADJH](
	[userId] [nvarchar](8) NOT NULL,
	[descr] [nvarchar](60) NOT NULL,
	[createdDt] [datetime] NULL,
	[lstEditDt] [datetime] NULL,
	[lstPostDt] [datetime] NULL,
	[status] [smallint] NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIADJH_KEY_0] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MIADJH] ADD  DEFAULT (' ') FOR [descr]
ALTER TABLE [dbo].[MIADJH] ADD  DEFAULT ((0)) FOR [status]
ALTER TABLE [dbo].[MIADJH]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[MIUSER] ([userId])
