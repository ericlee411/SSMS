/****** Object:  Table [dbo].[MIQSUP]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIQSUP](
	[itemId] [nvarchar](24) NOT NULL,
	[suplId] [nvarchar](12) NOT NULL,
	[suplProdCode] [nvarchar](255) NOT NULL,
	[poUOfM] [nvarchar](20) NOT NULL,
	[uConvFact] [numeric](20, 6) NOT NULL,
	[ordLstDate] [nvarchar](8) NULL,
	[recCostFunc] [numeric](20, 6) NOT NULL,
	[ytdQty] [numeric](20, 6) NOT NULL,
	[recCostSrc] [numeric](20, 6) NOT NULL,
	[srcCur] [nvarchar](3) NOT NULL,
	[lead] [smallint] NOT NULL,
	[basePrice] [numeric](20, 6) NOT NULL,
	[ordLstDt]  AS (CONVERT([datetime],[ordLstDate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIQSUP_KEY_0] PRIMARY KEY CLUSTERED 
(
	[itemId] ASC,
	[suplId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_PADDING ON

CREATE UNIQUE NONCLUSTERED INDEX [IDX_MIQSUP_1] ON [dbo].[MIQSUP]
(
	[suplId] ASC,
	[itemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[MIQSUP] ADD  DEFAULT (' ') FOR [itemId]
ALTER TABLE [dbo].[MIQSUP] ADD  DEFAULT (' ') FOR [suplProdCode]
ALTER TABLE [dbo].[MIQSUP] ADD  DEFAULT (' ') FOR [poUOfM]
ALTER TABLE [dbo].[MIQSUP] ADD  DEFAULT ((1)) FOR [uConvFact]
ALTER TABLE [dbo].[MIQSUP] ADD  DEFAULT ((0)) FOR [recCostFunc]
ALTER TABLE [dbo].[MIQSUP] ADD  DEFAULT ((0)) FOR [ytdQty]
ALTER TABLE [dbo].[MIQSUP] ADD  DEFAULT ((0)) FOR [recCostSrc]
ALTER TABLE [dbo].[MIQSUP] ADD  DEFAULT (' ') FOR [srcCur]
ALTER TABLE [dbo].[MIQSUP] ADD  DEFAULT ((0)) FOR [lead]
ALTER TABLE [dbo].[MIQSUP] ADD  DEFAULT ((0)) FOR [basePrice]
ALTER TABLE [dbo].[MIQSUP]  WITH CHECK ADD FOREIGN KEY([suplId])
REFERENCES [dbo].[MISUPL] ([suplId])
ALTER TABLE [dbo].[MIQSUP]  WITH CHECK ADD  CONSTRAINT [FK_MIQSUP_MIITEM] FOREIGN KEY([itemId])
REFERENCES [dbo].[MIITEM] ([itemId])
ON DELETE CASCADE
ALTER TABLE [dbo].[MIQSUP] CHECK CONSTRAINT [FK_MIQSUP_MIITEM]
