/****** Object:  Table [dbo].[MISLNO]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MISLNO](
	[itemId] [nvarchar](24) NOT NULL,
	[lotId] [nvarchar](40) NOT NULL,
	[seqNo] [int] NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MISLNO_KEY_0] PRIMARY KEY CLUSTERED 
(
	[itemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MISLNO] ADD  DEFAULT (' ') FOR [itemId]
ALTER TABLE [dbo].[MISLNO] ADD  DEFAULT (' ') FOR [lotId]
ALTER TABLE [dbo].[MISLNO] ADD  DEFAULT ((0)) FOR [seqNo]
