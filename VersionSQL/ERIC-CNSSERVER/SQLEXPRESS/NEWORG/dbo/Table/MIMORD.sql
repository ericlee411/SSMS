/****** Object:  Table [dbo].[MIMORD]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIMORD](
	[mohId] [nvarchar](15) NOT NULL,
	[opCode] [nvarchar](24) NOT NULL,
	[wcId] [nvarchar](24) NULL,
	[toolId] [nvarchar](12) NULL,
	[lineNbr] [smallint] NOT NULL,
	[batchSize] [numeric](20, 6) NOT NULL,
	[cycleTime] [numeric](20, 6) NOT NULL,
	[setupTime] [numeric](20, 6) NOT NULL,
	[preopTime] [numeric](20, 6) NOT NULL,
	[postTime] [numeric](20, 6) NOT NULL,
	[cmnt] [nvarchar](60) NOT NULL,
	[overlap] [bit] NOT NULL,
	[milestone] [bit] NOT NULL,
	[startQty] [numeric](20, 6) NOT NULL,
	[compQty] [numeric](20, 6) NOT NULL,
	[startISODt] [nvarchar](23) NULL,
	[runTime] [numeric](20, 6) NOT NULL,
	[stdMatCost] [numeric](20, 6) NOT NULL,
	[stdLabCost] [numeric](20, 6) NOT NULL,
	[stdOvrhdCost] [numeric](20, 6) NOT NULL,
	[actMatCost] [numeric](20, 6) NOT NULL,
	[actLabCost] [numeric](20, 6) NOT NULL,
	[actOvrhdCost] [numeric](20, 6) NOT NULL,
	[ctlGroupId] [nvarchar](8) NULL,
	[pohId] [nvarchar](12) NULL,
	[pohRev] [smallint] NOT NULL,
	[fldXml] [text] NOT NULL,
	[cumCost] [numeric](20, 6) NOT NULL,
	[startDt]  AS (CONVERT([datetime],[startISODt])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIMORD_KEY_0] PRIMARY KEY CLUSTERED 
(
	[mohId] ASC,
	[opCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IDX_MIMORD_1] ON [dbo].[MIMORD]
(
	[wcId] ASC,
	[mohId] ASC,
	[opCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IDX_MIMORD_2] ON [dbo].[MIMORD]
(
	[toolId] ASC,
	[mohId] ASC,
	[opCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IDX_MIMORD_3] ON [dbo].[MIMORD]
(
	[mohId] ASC,
	[lineNbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[MIMORD] ADD  DEFAULT (' ') FOR [mohId]
ALTER TABLE [dbo].[MIMORD] ADD  DEFAULT ('NEWOP') FOR [opCode]
ALTER TABLE [dbo].[MIMORD] ADD  DEFAULT ((0)) FOR [lineNbr]
ALTER TABLE [dbo].[MIMORD] ADD  DEFAULT ((0)) FOR [batchSize]
ALTER TABLE [dbo].[MIMORD] ADD  DEFAULT ((0)) FOR [cycleTime]
ALTER TABLE [dbo].[MIMORD] ADD  DEFAULT ((0)) FOR [setupTime]
ALTER TABLE [dbo].[MIMORD] ADD  DEFAULT ((0)) FOR [preopTime]
ALTER TABLE [dbo].[MIMORD] ADD  DEFAULT ((0)) FOR [postTime]
ALTER TABLE [dbo].[MIMORD] ADD  DEFAULT (' ') FOR [cmnt]
ALTER TABLE [dbo].[MIMORD] ADD  DEFAULT ((0)) FOR [overlap]
ALTER TABLE [dbo].[MIMORD] ADD  DEFAULT ((1)) FOR [milestone]
ALTER TABLE [dbo].[MIMORD] ADD  DEFAULT ((0)) FOR [startQty]
ALTER TABLE [dbo].[MIMORD] ADD  DEFAULT ((0)) FOR [compQty]
ALTER TABLE [dbo].[MIMORD] ADD  DEFAULT ((0)) FOR [runTime]
ALTER TABLE [dbo].[MIMORD] ADD  DEFAULT ((0)) FOR [stdMatCost]
ALTER TABLE [dbo].[MIMORD] ADD  DEFAULT ((0)) FOR [stdLabCost]
ALTER TABLE [dbo].[MIMORD] ADD  DEFAULT ((0)) FOR [stdOvrhdCost]
ALTER TABLE [dbo].[MIMORD] ADD  DEFAULT ((0)) FOR [actMatCost]
ALTER TABLE [dbo].[MIMORD] ADD  DEFAULT ((0)) FOR [actLabCost]
ALTER TABLE [dbo].[MIMORD] ADD  DEFAULT ((0)) FOR [actOvrhdCost]
ALTER TABLE [dbo].[MIMORD] ADD  DEFAULT ((0)) FOR [pohRev]
ALTER TABLE [dbo].[MIMORD] ADD  DEFAULT (' ') FOR [fldXml]
ALTER TABLE [dbo].[MIMORD] ADD  DEFAULT ((0)) FOR [cumCost]
ALTER TABLE [dbo].[MIMORD]  WITH CHECK ADD FOREIGN KEY([ctlGroupId])
REFERENCES [dbo].[MIGROUP] ([groupId])
ALTER TABLE [dbo].[MIMORD]  WITH CHECK ADD FOREIGN KEY([toolId])
REFERENCES [dbo].[MITOOL] ([toolId])
ALTER TABLE [dbo].[MIMORD]  WITH CHECK ADD FOREIGN KEY([wcId])
REFERENCES [dbo].[MIMOWC] ([wcId])
ALTER TABLE [dbo].[MIMORD]  WITH CHECK ADD  CONSTRAINT [FK_MIMORD_MIMOH] FOREIGN KEY([mohId])
REFERENCES [dbo].[MIMOH] ([mohId])
ON DELETE CASCADE
ALTER TABLE [dbo].[MIMORD] CHECK CONSTRAINT [FK_MIMORD_MIMOH]
