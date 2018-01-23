/****** Object:  Table [dbo].[MIMOWCC]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIMOWCC](
	[classId] [nvarchar](12) NOT NULL,
	[descr] [nvarchar](60) NOT NULL,
	[docPath] [nvarchar](260) NOT NULL,
	[fldXml] [text] NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIMOWCC_KEY_0] PRIMARY KEY CLUSTERED 
(
	[classId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

ALTER TABLE [dbo].[MIMOWCC] ADD  DEFAULT (' ') FOR [classId]
ALTER TABLE [dbo].[MIMOWCC] ADD  DEFAULT (' ') FOR [descr]
ALTER TABLE [dbo].[MIMOWCC] ADD  DEFAULT (' ') FOR [docPath]
ALTER TABLE [dbo].[MIMOWCC] ADD  DEFAULT (' ') FOR [fldXml]
