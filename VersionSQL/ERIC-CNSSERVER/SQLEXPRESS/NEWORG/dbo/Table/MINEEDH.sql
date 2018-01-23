/****** Object:  Table [dbo].[MINEEDH]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MINEEDH](
	[needNo] [int] NOT NULL,
	[uniqItemLoc] [int] NOT NULL,
	[needSource] [int] NOT NULL,
	[needId] [nvarchar](15) NOT NULL,
	[itemId] [nvarchar](24) NOT NULL,
	[locId] [nvarchar](6) NOT NULL,
	[itemType] [smallint] NOT NULL,
	[qSup] [bit] NOT NULL,
	[excess] [numeric](20, 6) NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MINEEDH_KEY_0] PRIMARY KEY CLUSTERED 
(
	[needNo] ASC,
	[uniqItemLoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_PADDING ON

CREATE UNIQUE NONCLUSTERED INDEX [IDX_MINEEDH_1] ON [dbo].[MINEEDH]
(
	[needSource] ASC,
	[needId] ASC,
	[itemId] ASC,
	[locId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[MINEEDH] ADD  DEFAULT ((0)) FOR [needNo]
ALTER TABLE [dbo].[MINEEDH] ADD  DEFAULT ((0)) FOR [uniqItemLoc]
ALTER TABLE [dbo].[MINEEDH] ADD  DEFAULT ((0)) FOR [needSource]
ALTER TABLE [dbo].[MINEEDH] ADD  DEFAULT (' ') FOR [needId]
ALTER TABLE [dbo].[MINEEDH] ADD  DEFAULT (' ') FOR [locId]
ALTER TABLE [dbo].[MINEEDH] ADD  DEFAULT ((0)) FOR [itemType]
ALTER TABLE [dbo].[MINEEDH] ADD  DEFAULT ((0)) FOR [qSup]
ALTER TABLE [dbo].[MINEEDH] ADD  DEFAULT ((0)) FOR [excess]
