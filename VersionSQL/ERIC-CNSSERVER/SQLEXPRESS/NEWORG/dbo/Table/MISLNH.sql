/****** Object:  Table [dbo].[MISLNH]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MISLNH](
	[itemId] [nvarchar](24) NOT NULL,
	[lotId] [nvarchar](40) NOT NULL,
	[seqNo] [int] NOT NULL,
	[descr] [nvarchar](60) NOT NULL,
	[createDate] [nvarchar](8) NULL,
	[expireDate] [nvarchar](8) NULL,
	[lstUseDate] [nvarchar](8) NULL,
	[status] [smallint] NOT NULL,
	[docPath] [nvarchar](260) NOT NULL,
	[fldXml] [text] NOT NULL,
	[createDt]  AS (CONVERT([datetime],[createDate])),
	[expireDt]  AS (CONVERT([datetime],[expireDate])),
	[lstUseDt]  AS (CONVERT([datetime],[lstUseDate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MISLNH_KEY_0] PRIMARY KEY CLUSTERED 
(
	[itemId] ASC,
	[lotId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IDX_MISLNH_1] ON [dbo].[MISLNH]
(
	[itemId] ASC,
	[seqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IDX_MISLNH_2] ON [dbo].[MISLNH]
(
	[itemId] ASC,
	[expireDate] ASC,
	[lotId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[MISLNH] ADD  DEFAULT (' ') FOR [lotId]
ALTER TABLE [dbo].[MISLNH] ADD  DEFAULT ((0)) FOR [seqNo]
ALTER TABLE [dbo].[MISLNH] ADD  DEFAULT (' ') FOR [descr]
ALTER TABLE [dbo].[MISLNH] ADD  DEFAULT ((0)) FOR [status]
ALTER TABLE [dbo].[MISLNH] ADD  DEFAULT (' ') FOR [docPath]
ALTER TABLE [dbo].[MISLNH] ADD  DEFAULT (' ') FOR [fldXml]
ALTER TABLE [dbo].[MISLNH]  WITH CHECK ADD FOREIGN KEY([itemId])
REFERENCES [dbo].[MIITEM] ([itemId])
