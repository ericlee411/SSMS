/****** Object:  Table [dbo].[MIMOH]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIMOH](
	[mohId] [nvarchar](15) NOT NULL,
	[lstMaintDt] [datetime] NULL,
	[descr] [nvarchar](60) NOT NULL,
	[notes] [nvarchar](2000) NOT NULL,
	[creator] [nvarchar](8) NOT NULL,
	[releaser] [nvarchar](8) NOT NULL,
	[jobId] [nvarchar](12) NULL,
	[locId] [nvarchar](6) NULL,
	[buildItem] [nvarchar](24) NULL,
	[buildNonItem] [bit] NOT NULL,
	[buildNonItemDesc] [nvarchar](60) NOT NULL,
	[bomItem] [nvarchar](24) NULL,
	[bomRev] [nvarchar](6) NULL,
	[moStat] [smallint] NOT NULL,
	[prStat] [smallint] NOT NULL,
	[ordQty] [numeric](20, 6) NOT NULL,
	[ordDate] [nvarchar](8) NULL,
	[startDate] [nvarchar](8) NULL,
	[endDate] [nvarchar](8) NULL,
	[releaseDate] [nvarchar](8) NULL,
	[relOrdQty] [numeric](20, 6) NOT NULL,
	[releaseCost] [numeric](20, 6) NOT NULL,
	[relLabCost] [numeric](20, 6) NOT NULL,
	[relOvrhdCost] [numeric](20, 6) NOT NULL,
	[priority] [smallint] NOT NULL,
	[markup] [numeric](20, 6) NOT NULL,
	[wipQty] [numeric](20, 6) NOT NULL,
	[resQty] [numeric](20, 6) NOT NULL,
	[endQty] [numeric](20, 6) NOT NULL,
	[closeDate] [nvarchar](8) NULL,
	[hdrTxt1] [nvarchar](30) NOT NULL,
	[hdrTxt2] [nvarchar](30) NOT NULL,
	[hdrTxt3] [nvarchar](30) NOT NULL,
	[hdrTxt4] [nvarchar](30) NOT NULL,
	[docPath] [nvarchar](260) NOT NULL,
	[oeOrdNo] [nvarchar](256) NOT NULL,
	[oeOrdDtLn] [int] NOT NULL,
	[icTransQty] [numeric](20, 6) NOT NULL,
	[onHold] [bit] NOT NULL,
	[fldXml] [text] NOT NULL,
	[icLoc] [nvarchar](256) NOT NULL,
	[customer] [nvarchar](256) NULL,
	[soShipDate] [nvarchar](8) NULL,
	[chkValidEndDt] [bit] NOT NULL,
	[buildSales] [nvarchar](256) NOT NULL,
	[cumCost] [numeric](20, 6) NOT NULL,
	[ordDt]  AS (CONVERT([datetime],[ordDate])),
	[startDt]  AS (CONVERT([datetime],[startDate])),
	[endDt]  AS (CONVERT([datetime],[endDate])),
	[releaseDt]  AS (CONVERT([datetime],[releaseDate])),
	[closeDt]  AS (CONVERT([datetime],[closeDate])),
	[soShipDt]  AS (CONVERT([datetime],[soShipDate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIMOH_KEY_0] PRIMARY KEY CLUSTERED 
(
	[mohId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IDX_MIMOH_1] ON [dbo].[MIMOH]
(
	[bomItem] ASC,
	[bomRev] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IDX_MIMOH_2] ON [dbo].[MIMOH]
(
	[oeOrdNo] ASC,
	[oeOrdDtLn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT (' ') FOR [mohId]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT (' ') FOR [descr]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT (' ') FOR [notes]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT ('ADMIN') FOR [creator]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT (' ') FOR [releaser]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT ((1)) FOR [buildNonItem]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT (' ') FOR [buildNonItemDesc]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT ((0)) FOR [moStat]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT ((0)) FOR [prStat]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT ((0)) FOR [ordQty]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT ((0)) FOR [relOrdQty]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT ((0)) FOR [releaseCost]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT ((0)) FOR [relLabCost]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT ((0)) FOR [relOvrhdCost]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT ((2)) FOR [priority]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT ((1)) FOR [markup]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT ((0)) FOR [wipQty]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT ((0)) FOR [resQty]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT ((0)) FOR [endQty]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT (' ') FOR [hdrTxt1]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT (' ') FOR [hdrTxt2]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT (' ') FOR [hdrTxt3]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT (' ') FOR [hdrTxt4]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT (' ') FOR [docPath]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT (' ') FOR [oeOrdNo]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT ((0)) FOR [oeOrdDtLn]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT ((0)) FOR [icTransQty]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT ((0)) FOR [onHold]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT (' ') FOR [fldXml]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT (' ') FOR [icLoc]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT ((0)) FOR [chkValidEndDt]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT (' ') FOR [buildSales]
ALTER TABLE [dbo].[MIMOH] ADD  DEFAULT ((0)) FOR [cumCost]
ALTER TABLE [dbo].[MIMOH]  WITH CHECK ADD FOREIGN KEY([bomItem])
REFERENCES [dbo].[MIITEM] ([itemId])
ALTER TABLE [dbo].[MIMOH]  WITH CHECK ADD FOREIGN KEY([jobId])
REFERENCES [dbo].[MIJOBH] ([jobId])
ALTER TABLE [dbo].[MIMOH]  WITH CHECK ADD FOREIGN KEY([locId])
REFERENCES [dbo].[MIDLOC] ([locId])
ALTER TABLE [dbo].[MIMOH]  WITH CHECK ADD  CONSTRAINT [FK_MIMOH_MIBOMH] FOREIGN KEY([bomItem], [bomRev])
REFERENCES [dbo].[MIBOMH] ([bomItem], [bomRev])
ALTER TABLE [dbo].[MIMOH] CHECK CONSTRAINT [FK_MIMOH_MIBOMH]
