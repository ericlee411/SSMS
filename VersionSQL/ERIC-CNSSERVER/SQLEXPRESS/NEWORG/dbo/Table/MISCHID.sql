/****** Object:  Table [dbo].[MISCHID]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MISCHID](
	[schId] [nvarchar](6) NOT NULL,
	[schNum] [int] NOT NULL,
	[userId] [nvarchar](8) NULL,
	[descr] [nvarchar](60) NOT NULL,
	[singLoc] [bit] NOT NULL,
	[locId] [text] NOT NULL,
	[startDate] [nvarchar](8) NULL,
	[endDate] [nvarchar](8) NULL,
	[status] [smallint] NOT NULL,
	[autoBuild] [smallint] NOT NULL,
	[useAlt] [bit] NOT NULL,
	[workWeek] [int] NOT NULL,
	[docPath] [nvarchar](260) NOT NULL,
	[initDate] [nvarchar](8) NULL,
	[shortage] [smallint] NOT NULL,
	[mode] [smallint] NOT NULL,
	[bOptimistic] [bit] NOT NULL,
	[inclSalesOrd] [bit] NOT NULL,
	[inclSalesInv] [bit] NOT NULL,
	[inclQuotes] [bit] NOT NULL,
	[salesLoc] [nvarchar](6) NULL,
	[pegSalesOrders] [bit] NOT NULL,
	[sortOrder] [smallint] NOT NULL,
	[bInclRaw] [bit] NOT NULL,
	[bInclRsc] [bit] NOT NULL,
	[bInclTop] [bit] NOT NULL,
	[bInclSub] [bit] NOT NULL,
	[bInclBlk] [bit] NOT NULL,
	[bInclOut] [bit] NOT NULL,
	[bInclCur] [bit] NOT NULL,
	[bInclSch] [bit] NOT NULL,
	[bInclLvl] [bit] NOT NULL,
	[bInclAll] [bit] NOT NULL,
	[bOptShifts] [bit] NOT NULL,
	[bExclSalesBef] [bit] NOT NULL,
	[exclSalesBefDate] [nvarchar](8) NULL,
	[useAltLoc] [bit] NOT NULL,
	[fldXml] [text] NOT NULL,
	[startDt]  AS (CONVERT([datetime],[startDate])),
	[endDt]  AS (CONVERT([datetime],[endDate])),
	[initDt]  AS (CONVERT([datetime],[initDate])),
	[exclSalesBefDt]  AS (CONVERT([datetime],[exclSalesBefDate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MISCHID_KEY_0] PRIMARY KEY CLUSTERED 
(
	[schId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE UNIQUE NONCLUSTERED INDEX [IDX_MISCHID_1] ON [dbo].[MISCHID]
(
	[schNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[MISCHID] ADD  DEFAULT (' ') FOR [schId]
ALTER TABLE [dbo].[MISCHID] ADD  DEFAULT ((0)) FOR [schNum]
ALTER TABLE [dbo].[MISCHID] ADD  DEFAULT (' ') FOR [descr]
ALTER TABLE [dbo].[MISCHID] ADD  DEFAULT ((0)) FOR [singLoc]
ALTER TABLE [dbo].[MISCHID] ADD  DEFAULT (' ') FOR [locId]
ALTER TABLE [dbo].[MISCHID] ADD  DEFAULT ((0)) FOR [status]
ALTER TABLE [dbo].[MISCHID] ADD  DEFAULT ((0)) FOR [autoBuild]
ALTER TABLE [dbo].[MISCHID] ADD  DEFAULT ((0)) FOR [useAlt]
ALTER TABLE [dbo].[MISCHID] ADD  DEFAULT ((0)) FOR [workWeek]
ALTER TABLE [dbo].[MISCHID] ADD  DEFAULT (' ') FOR [docPath]
ALTER TABLE [dbo].[MISCHID] ADD  DEFAULT ((0)) FOR [shortage]
ALTER TABLE [dbo].[MISCHID] ADD  DEFAULT ((0)) FOR [mode]
ALTER TABLE [dbo].[MISCHID] ADD  DEFAULT ((1)) FOR [bOptimistic]
ALTER TABLE [dbo].[MISCHID] ADD  DEFAULT ((0)) FOR [inclSalesOrd]
ALTER TABLE [dbo].[MISCHID] ADD  DEFAULT ((0)) FOR [inclSalesInv]
ALTER TABLE [dbo].[MISCHID] ADD  DEFAULT ((0)) FOR [inclQuotes]
ALTER TABLE [dbo].[MISCHID] ADD  DEFAULT ((0)) FOR [pegSalesOrders]
ALTER TABLE [dbo].[MISCHID] ADD  DEFAULT ((2)) FOR [sortOrder]
ALTER TABLE [dbo].[MISCHID] ADD  DEFAULT ((1)) FOR [bInclRaw]
ALTER TABLE [dbo].[MISCHID] ADD  DEFAULT ((0)) FOR [bInclRsc]
ALTER TABLE [dbo].[MISCHID] ADD  DEFAULT ((1)) FOR [bInclTop]
ALTER TABLE [dbo].[MISCHID] ADD  DEFAULT ((1)) FOR [bInclSub]
ALTER TABLE [dbo].[MISCHID] ADD  DEFAULT ((1)) FOR [bInclBlk]
ALTER TABLE [dbo].[MISCHID] ADD  DEFAULT ((1)) FOR [bInclOut]
ALTER TABLE [dbo].[MISCHID] ADD  DEFAULT ((0)) FOR [bInclCur]
ALTER TABLE [dbo].[MISCHID] ADD  DEFAULT ((0)) FOR [bInclSch]
ALTER TABLE [dbo].[MISCHID] ADD  DEFAULT ((0)) FOR [bInclLvl]
ALTER TABLE [dbo].[MISCHID] ADD  DEFAULT ((1)) FOR [bInclAll]
ALTER TABLE [dbo].[MISCHID] ADD  DEFAULT ((0)) FOR [bOptShifts]
ALTER TABLE [dbo].[MISCHID] ADD  DEFAULT ((0)) FOR [bExclSalesBef]
ALTER TABLE [dbo].[MISCHID] ADD  DEFAULT ((0)) FOR [useAltLoc]
ALTER TABLE [dbo].[MISCHID] ADD  DEFAULT (' ') FOR [fldXml]
ALTER TABLE [dbo].[MISCHID]  WITH CHECK ADD FOREIGN KEY([salesLoc])
REFERENCES [dbo].[MIDLOC] ([locId])
ALTER TABLE [dbo].[MISCHID]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[MIUSER] ([userId])
