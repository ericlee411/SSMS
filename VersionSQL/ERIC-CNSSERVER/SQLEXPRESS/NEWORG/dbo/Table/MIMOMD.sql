/****** Object:  Table [dbo].[MIMOMD]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIMOMD](
	[mohId] [nvarchar](15) NOT NULL,
	[momdId] [int] NOT NULL,
	[lineNbr] [smallint] NOT NULL,
	[dType] [int] NOT NULL,
	[partId] [nvarchar](24) NULL,
	[bomRev] [nvarchar](6) NULL,
	[overRide] [int] NOT NULL,
	[childOrdId] [nvarchar](15) NULL,
	[lead] [int] NOT NULL,
	[qty] [numeric](20, 6) NOT NULL,
	[reqQty] [numeric](20, 6) NOT NULL,
	[relQty] [numeric](20, 6) NOT NULL,
	[wipQty] [numeric](20, 6) NOT NULL,
	[resQty] [numeric](20, 6) NOT NULL,
	[endQty] [numeric](20, 6) NOT NULL,
	[scrapQty] [numeric](20, 6) NOT NULL,
	[podQty] [numeric](20, 6) NOT NULL,
	[cmnt] [nvarchar](60) NOT NULL,
	[srcLoc] [nvarchar](6) NULL,
	[opCode] [nvarchar](24) NULL,
	[scrapCost] [numeric](20, 6) NOT NULL,
	[matCost] [numeric](20, 6) NOT NULL,
	[nonItem] [bit] NOT NULL,
	[nonItemDesc] [nvarchar](60) NOT NULL,
	[nonItemCost] [numeric](20, 6) NOT NULL,
	[fldXml] [text] NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIMOMD_KEY_0] PRIMARY KEY CLUSTERED 
(
	[mohId] ASC,
	[momdId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IDX_MIMOMD_1] ON [dbo].[MIMOMD]
(
	[partId] ASC,
	[mohId] ASC,
	[momdId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IDX_MIMOMD_2] ON [dbo].[MIMOMD]
(
	[childOrdId] ASC,
	[mohId] ASC,
	[momdId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[MIMOMD] ADD  DEFAULT (' ') FOR [mohId]
ALTER TABLE [dbo].[MIMOMD] ADD  DEFAULT ((0)) FOR [momdId]
ALTER TABLE [dbo].[MIMOMD] ADD  DEFAULT ((0)) FOR [lineNbr]
ALTER TABLE [dbo].[MIMOMD] ADD  DEFAULT ((0)) FOR [dType]
ALTER TABLE [dbo].[MIMOMD] ADD  DEFAULT ((0)) FOR [overRide]
ALTER TABLE [dbo].[MIMOMD] ADD  DEFAULT ((0)) FOR [lead]
ALTER TABLE [dbo].[MIMOMD] ADD  DEFAULT ((0)) FOR [qty]
ALTER TABLE [dbo].[MIMOMD] ADD  DEFAULT ((0)) FOR [reqQty]
ALTER TABLE [dbo].[MIMOMD] ADD  DEFAULT ((0)) FOR [relQty]
ALTER TABLE [dbo].[MIMOMD] ADD  DEFAULT ((0)) FOR [wipQty]
ALTER TABLE [dbo].[MIMOMD] ADD  DEFAULT ((0)) FOR [resQty]
ALTER TABLE [dbo].[MIMOMD] ADD  DEFAULT ((0)) FOR [endQty]
ALTER TABLE [dbo].[MIMOMD] ADD  DEFAULT ((0)) FOR [scrapQty]
ALTER TABLE [dbo].[MIMOMD] ADD  DEFAULT ((0)) FOR [podQty]
ALTER TABLE [dbo].[MIMOMD] ADD  DEFAULT (' ') FOR [cmnt]
ALTER TABLE [dbo].[MIMOMD] ADD  DEFAULT (' ') FOR [opCode]
ALTER TABLE [dbo].[MIMOMD] ADD  DEFAULT ((0)) FOR [scrapCost]
ALTER TABLE [dbo].[MIMOMD] ADD  DEFAULT ((0)) FOR [matCost]
ALTER TABLE [dbo].[MIMOMD] ADD  DEFAULT ((1)) FOR [nonItem]
ALTER TABLE [dbo].[MIMOMD] ADD  DEFAULT (' ') FOR [nonItemDesc]
ALTER TABLE [dbo].[MIMOMD] ADD  DEFAULT ((0)) FOR [nonItemCost]
ALTER TABLE [dbo].[MIMOMD] ADD  DEFAULT (' ') FOR [fldXml]
ALTER TABLE [dbo].[MIMOMD]  WITH CHECK ADD FOREIGN KEY([childOrdId])
REFERENCES [dbo].[MIMOH] ([mohId])
ALTER TABLE [dbo].[MIMOMD]  WITH CHECK ADD FOREIGN KEY([srcLoc])
REFERENCES [dbo].[MIDLOC] ([locId])
ALTER TABLE [dbo].[MIMOMD]  WITH CHECK ADD  CONSTRAINT [FK_MIMOMD_MIBOMH] FOREIGN KEY([partId], [bomRev])
REFERENCES [dbo].[MIBOMH] ([bomItem], [bomRev])
ALTER TABLE [dbo].[MIMOMD] CHECK CONSTRAINT [FK_MIMOMD_MIBOMH]
ALTER TABLE [dbo].[MIMOMD]  WITH CHECK ADD  CONSTRAINT [FK_MIMOMD_MIMOH] FOREIGN KEY([mohId])
REFERENCES [dbo].[MIMOH] ([mohId])
ON DELETE CASCADE
ALTER TABLE [dbo].[MIMOMD] CHECK CONSTRAINT [FK_MIMOMD_MIMOH]
