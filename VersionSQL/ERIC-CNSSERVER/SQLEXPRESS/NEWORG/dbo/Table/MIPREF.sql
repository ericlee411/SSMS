/****** Object:  Table [dbo].[MIPREF]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIPREF](
	[userId] [nvarchar](8) NOT NULL,
	[scavl] [smallint] NOT NULL,
	[scovride] [smallint] NOT NULL,
	[mtovride] [smallint] NOT NULL,
	[piSortFld1] [smallint] NOT NULL,
	[piSortFld2] [smallint] NOT NULL,
	[piSortOrder] [bit] NOT NULL,
	[piBasis] [smallint] NOT NULL,
	[piFormat] [smallint] NOT NULL,
	[piCopies] [smallint] NOT NULL,
	[piBaseISODate] [nvarchar](8) NULL,
	[piBaseCycles] [nvarchar](50) NULL,
	[piItemLo] [nvarchar](24) NULL,
	[piItemHi] [nvarchar](24) NULL,
	[piLocLo] [nvarchar](6) NULL,
	[piLocHi] [nvarchar](6) NULL,
	[other] [text] NOT NULL,
	[piBaseDate]  AS (CONVERT([datetime],[piBaseISODate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIPREF_KEY_0] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

ALTER TABLE [dbo].[MIPREF] ADD  DEFAULT (' ') FOR [userId]
ALTER TABLE [dbo].[MIPREF] ADD  DEFAULT ((0)) FOR [scavl]
ALTER TABLE [dbo].[MIPREF] ADD  DEFAULT ((0)) FOR [scovride]
ALTER TABLE [dbo].[MIPREF] ADD  DEFAULT ((0)) FOR [mtovride]
ALTER TABLE [dbo].[MIPREF] ADD  DEFAULT ((0)) FOR [piSortFld1]
ALTER TABLE [dbo].[MIPREF] ADD  DEFAULT ((0)) FOR [piSortFld2]
ALTER TABLE [dbo].[MIPREF] ADD  DEFAULT ((0)) FOR [piSortOrder]
ALTER TABLE [dbo].[MIPREF] ADD  DEFAULT ((0)) FOR [piBasis]
ALTER TABLE [dbo].[MIPREF] ADD  DEFAULT ((0)) FOR [piFormat]
ALTER TABLE [dbo].[MIPREF] ADD  DEFAULT ((1)) FOR [piCopies]
ALTER TABLE [dbo].[MIPREF] ADD  DEFAULT (' ') FOR [other]
