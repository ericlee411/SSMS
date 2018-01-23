/****** Object:  Table [dbo].[MISLTH]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MISLTH](
	[tranDate] [nvarchar](8) NOT NULL,
	[userId] [nvarchar](8) NOT NULL,
	[entry] [int] NOT NULL,
	[detail] [int] NOT NULL,
	[itemId] [nvarchar](24) NULL,
	[prntItemId] [nvarchar](24) NULL,
	[locId] [nvarchar](6) NULL,
	[binId] [nvarchar](24) NULL,
	[jobId] [nvarchar](12) NULL,
	[type] [smallint] NOT NULL,
	[xvarToLoc] [nvarchar](6) NULL,
	[xvarBinId] [nvarchar](24) NULL,
	[xvarPOId] [nvarchar](12) NULL,
	[xvarPORev] [smallint] NULL,
	[xvarWOId] [nvarchar](12) NULL,
	[xvarMOId] [nvarchar](15) NULL,
	[xvarSOId] [nvarchar](256) NULL,
	[xvarSOLn] [int] NOT NULL,
	[xvarSuplId] [nvarchar](12) NULL,
	[xvarItemId] [nvarchar](24) NULL,
	[xvarOpCode] [nvarchar](24) NULL,
	[parentFlag] [bit] NOT NULL,
	[track] [smallint] NOT NULL,
	[trnQty] [numeric](20, 6) NOT NULL,
	[rdyQty] [numeric](20, 6) NOT NULL,
	[recQty] [numeric](20, 6) NOT NULL,
	[tranDt]  AS (CONVERT([datetime],[tranDate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MISLTH_KEY_0] PRIMARY KEY CLUSTERED 
(
	[tranDate] ASC,
	[userId] ASC,
	[entry] ASC,
	[detail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IDX_MISLTH_1] ON [dbo].[MISLTH]
(
	[itemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IDX_MISLTH_2] ON [dbo].[MISLTH]
(
	[xvarPOId] ASC,
	[xvarPORev] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IDX_MISLTH_3] ON [dbo].[MISLTH]
(
	[xvarMOId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[MISLTH] ADD  DEFAULT (' ') FOR [userId]
ALTER TABLE [dbo].[MISLTH] ADD  DEFAULT ((0)) FOR [entry]
ALTER TABLE [dbo].[MISLTH] ADD  DEFAULT ((0)) FOR [detail]
ALTER TABLE [dbo].[MISLTH] ADD  DEFAULT ((0)) FOR [type]
ALTER TABLE [dbo].[MISLTH] ADD  DEFAULT ((0)) FOR [xvarSOLn]
ALTER TABLE [dbo].[MISLTH] ADD  DEFAULT ((0)) FOR [parentFlag]
ALTER TABLE [dbo].[MISLTH] ADD  DEFAULT ((0)) FOR [track]
ALTER TABLE [dbo].[MISLTH] ADD  DEFAULT ((0)) FOR [trnQty]
ALTER TABLE [dbo].[MISLTH] ADD  DEFAULT ((0)) FOR [rdyQty]
ALTER TABLE [dbo].[MISLTH] ADD  DEFAULT ((0)) FOR [recQty]
