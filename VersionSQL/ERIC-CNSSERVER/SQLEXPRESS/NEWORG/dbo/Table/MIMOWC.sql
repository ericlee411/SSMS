/****** Object:  Table [dbo].[MIMOWC]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIMOWC](
	[wcId] [nvarchar](24) NOT NULL,
	[descr] [nvarchar](30) NOT NULL,
	[shiftId] [nvarchar](12) NULL,
	[classId] [nvarchar](12) NULL,
	[setupTime] [numeric](20, 6) NOT NULL,
	[cycleTime] [numeric](20, 6) NOT NULL,
	[preopTime] [numeric](20, 6) NOT NULL,
	[postOpTime] [numeric](20, 6) NOT NULL,
	[locId] [nvarchar](6) NULL,
	[docPath] [nvarchar](260) NOT NULL,
	[efficiency] [numeric](20, 6) NOT NULL,
	[fldXml] [text] NOT NULL,
	[status] [smallint] NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIMOWC_KEY_0] PRIMARY KEY CLUSTERED 
(
	[wcId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

ALTER TABLE [dbo].[MIMOWC] ADD  DEFAULT (' ') FOR [wcId]
ALTER TABLE [dbo].[MIMOWC] ADD  DEFAULT (' ') FOR [descr]
ALTER TABLE [dbo].[MIMOWC] ADD  DEFAULT ((0)) FOR [setupTime]
ALTER TABLE [dbo].[MIMOWC] ADD  DEFAULT ((0)) FOR [cycleTime]
ALTER TABLE [dbo].[MIMOWC] ADD  DEFAULT ((0)) FOR [preopTime]
ALTER TABLE [dbo].[MIMOWC] ADD  DEFAULT ((0)) FOR [postOpTime]
ALTER TABLE [dbo].[MIMOWC] ADD  DEFAULT (' ') FOR [docPath]
ALTER TABLE [dbo].[MIMOWC] ADD  DEFAULT ((100)) FOR [efficiency]
ALTER TABLE [dbo].[MIMOWC] ADD  DEFAULT (' ') FOR [fldXml]
ALTER TABLE [dbo].[MIMOWC] ADD  DEFAULT ((0)) FOR [status]
ALTER TABLE [dbo].[MIMOWC]  WITH CHECK ADD FOREIGN KEY([classId])
REFERENCES [dbo].[MIMOWCC] ([classId])
ALTER TABLE [dbo].[MIMOWC]  WITH CHECK ADD FOREIGN KEY([locId])
REFERENCES [dbo].[MIDLOC] ([locId])
ALTER TABLE [dbo].[MIMOWC]  WITH CHECK ADD FOREIGN KEY([shiftId])
REFERENCES [dbo].[MIWCSH] ([shiftId])
