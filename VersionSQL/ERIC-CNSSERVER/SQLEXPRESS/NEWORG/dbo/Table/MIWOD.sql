/****** Object:  Table [dbo].[MIWOD]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIWOD](
	[wohId] [nvarchar](12) NOT NULL,
	[wodId] [int] NOT NULL,
	[lineNbr] [smallint] NOT NULL,
	[status] [smallint] NOT NULL,
	[partId] [nvarchar](24) NULL,
	[bomRev] [nvarchar](6) NULL,
	[locId] [nvarchar](6) NULL,
	[jobId] [nvarchar](12) NULL,
	[initStartDate] [nvarchar](8) NULL,
	[realStartDate] [nvarchar](8) NULL,
	[initEndDate] [nvarchar](8) NULL,
	[realEndDate] [nvarchar](8) NULL,
	[reqQty] [numeric](20, 6) NOT NULL,
	[resQty] [numeric](20, 6) NOT NULL,
	[wipQty] [numeric](20, 6) NOT NULL,
	[endQty] [numeric](20, 6) NOT NULL,
	[cmnt] [nvarchar](60) NOT NULL,
	[mohId] [nvarchar](15) NULL,
	[oeOrdNo] [nvarchar](256) NOT NULL,
	[oeOrdDtLn] [int] NOT NULL,
	[icTransQty] [numeric](20, 6) NOT NULL,
	[fldXml] [text] NOT NULL,
	[icLoc] [nvarchar](256) NOT NULL,
	[customer] [nvarchar](256) NULL,
	[soShipDate] [nvarchar](8) NULL,
	[chkValidEndDt] [bit] NOT NULL,
	[initStartDt]  AS (CONVERT([datetime],[initStartDate])),
	[realStartDt]  AS (CONVERT([datetime],[realStartDate])),
	[initEndDt]  AS (CONVERT([datetime],[initEndDate])),
	[realEndDt]  AS (CONVERT([datetime],[realEndDate])),
	[soShipDt]  AS (CONVERT([datetime],[soShipDate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIWOD_KEY_0] PRIMARY KEY CLUSTERED 
(
	[wohId] ASC,
	[wodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IDX_MIWOD_1] ON [dbo].[MIWOD]
(
	[partId] ASC,
	[wohId] ASC,
	[wodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[MIWOD] ADD  DEFAULT (' ') FOR [wohId]
ALTER TABLE [dbo].[MIWOD] ADD  DEFAULT ((0)) FOR [wodId]
ALTER TABLE [dbo].[MIWOD] ADD  DEFAULT ((0)) FOR [lineNbr]
ALTER TABLE [dbo].[MIWOD] ADD  DEFAULT ((0)) FOR [status]
ALTER TABLE [dbo].[MIWOD] ADD  DEFAULT ((0)) FOR [reqQty]
ALTER TABLE [dbo].[MIWOD] ADD  DEFAULT ((0)) FOR [resQty]
ALTER TABLE [dbo].[MIWOD] ADD  DEFAULT ((0)) FOR [wipQty]
ALTER TABLE [dbo].[MIWOD] ADD  DEFAULT ((0)) FOR [endQty]
ALTER TABLE [dbo].[MIWOD] ADD  DEFAULT (' ') FOR [cmnt]
ALTER TABLE [dbo].[MIWOD] ADD  DEFAULT (' ') FOR [oeOrdNo]
ALTER TABLE [dbo].[MIWOD] ADD  DEFAULT ((0)) FOR [oeOrdDtLn]
ALTER TABLE [dbo].[MIWOD] ADD  DEFAULT ((0)) FOR [icTransQty]
ALTER TABLE [dbo].[MIWOD] ADD  DEFAULT (' ') FOR [fldXml]
ALTER TABLE [dbo].[MIWOD] ADD  DEFAULT (' ') FOR [icLoc]
ALTER TABLE [dbo].[MIWOD] ADD  DEFAULT ((0)) FOR [chkValidEndDt]
ALTER TABLE [dbo].[MIWOD]  WITH CHECK ADD FOREIGN KEY([jobId])
REFERENCES [dbo].[MIJOBH] ([jobId])
ALTER TABLE [dbo].[MIWOD]  WITH CHECK ADD FOREIGN KEY([locId])
REFERENCES [dbo].[MIDLOC] ([locId])
ALTER TABLE [dbo].[MIWOD]  WITH CHECK ADD FOREIGN KEY([mohId])
REFERENCES [dbo].[MIMOH] ([mohId])
ALTER TABLE [dbo].[MIWOD]  WITH CHECK ADD FOREIGN KEY([partId])
REFERENCES [dbo].[MIITEM] ([itemId])
ALTER TABLE [dbo].[MIWOD]  WITH CHECK ADD  CONSTRAINT [FK_MIWOD_MIWOH] FOREIGN KEY([wohId])
REFERENCES [dbo].[MIWOH] ([wohId])
ON DELETE CASCADE
ALTER TABLE [dbo].[MIWOD] CHECK CONSTRAINT [FK_MIWOD_MIWOH]
