/****** Object:  Table [dbo].[MIPOH]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIPOH](
	[pohId] [nvarchar](12) NOT NULL,
	[pohRev] [smallint] NOT NULL,
	[poStatus] [smallint] NOT NULL,
	[prntStatus] [smallint] NOT NULL,
	[suplId] [nvarchar](12) NULL,
	[name] [nvarchar](60) NOT NULL,
	[ordDate] [nvarchar](8) NULL,
	[prntDate] [nvarchar](8) NULL,
	[expDate] [nvarchar](8) NULL,
	[closeDate] [nvarchar](8) NULL,
	[invoiced] [bit] NOT NULL,
	[jobId] [nvarchar](12) NULL,
	[locId] [nvarchar](6) NULL,
	[shpVia] [nvarchar](20) NOT NULL,
	[fob] [nvarchar](20) NOT NULL,
	[terms] [nvarchar](30) NOT NULL,
	[buyer] [nvarchar](60) NOT NULL,
	[contact] [nvarchar](60) NOT NULL,
	[freight] [nvarchar](20) NOT NULL,
	[homeCur] [nvarchar](3) NULL,
	[rateType] [nvarchar](2) NULL,
	[srcCur] [nvarchar](3) NULL,
	[rateDate] [nvarchar](8) NULL,
	[rate] [numeric](20, 6) NOT NULL,
	[spread] [numeric](20, 6) NOT NULL,
	[dateMatch] [smallint] NOT NULL,
	[rateOp] [smallint] NOT NULL,
	[maintDt] [datetime] NULL,
	[poUser] [nvarchar](8) NOT NULL,
	[idInvc] [nvarchar](22) NOT NULL,
	[taxGrp] [nvarchar](12) NULL,
	[bLocId] [nvarchar](6) NULL,
	[apBatch] [numeric](20, 6) NOT NULL,
	[apEntry] [numeric](20, 6) NOT NULL,
	[acctId] [nvarchar](45) NULL,
	[distId] [nvarchar](6) NOT NULL,
	[taxCode1] [nvarchar](12) NULL,
	[taxCode2] [nvarchar](12) NULL,
	[taxCode3] [nvarchar](12) NULL,
	[taxCode4] [nvarchar](12) NULL,
	[taxCode5] [nvarchar](12) NULL,
	[taxClass1] [smallint] NULL,
	[taxClass2] [smallint] NULL,
	[taxClass3] [smallint] NULL,
	[taxClass4] [smallint] NULL,
	[taxClass5] [smallint] NULL,
	[taxIncl1] [smallint] NOT NULL,
	[taxIncl2] [smallint] NOT NULL,
	[taxIncl3] [smallint] NOT NULL,
	[taxIncl4] [smallint] NOT NULL,
	[taxIncl5] [smallint] NOT NULL,
	[taxBase1] [numeric](20, 6) NOT NULL,
	[taxBase2] [numeric](20, 6) NOT NULL,
	[taxBase3] [numeric](20, 6) NOT NULL,
	[taxBase4] [numeric](20, 6) NOT NULL,
	[taxBase5] [numeric](20, 6) NOT NULL,
	[taxAmt1] [numeric](20, 6) NOT NULL,
	[taxAmt2] [numeric](20, 6) NOT NULL,
	[taxAmt3] [numeric](20, 6) NOT NULL,
	[taxAmt4] [numeric](20, 6) NOT NULL,
	[taxAmt5] [numeric](20, 6) NOT NULL,
	[taxAmt] [numeric](20, 6) NOT NULL,
	[fldXml] [text] NOT NULL,
	[ordDt]  AS (CONVERT([datetime],[ordDate])),
	[prntDt]  AS (CONVERT([datetime],[prntDate])),
	[expDt]  AS (CONVERT([datetime],[expDate])),
	[closeDt]  AS (CONVERT([datetime],[closeDate])),
	[rateDt]  AS (CONVERT([datetime],[rateDate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIPOH_KEY_0] PRIMARY KEY CLUSTERED 
(
	[pohId] ASC,
	[pohRev] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IDX_MIPOH_1] ON [dbo].[MIPOH]
(
	[poUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IDX_MIPOH_2] ON [dbo].[MIPOH]
(
	[suplId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT (' ') FOR [pohId]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT ((0)) FOR [pohRev]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT ((0)) FOR [poStatus]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT ((0)) FOR [prntStatus]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT (' ') FOR [name]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT ((0)) FOR [invoiced]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT (' ') FOR [shpVia]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT (' ') FOR [fob]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT (' ') FOR [terms]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT (' ') FOR [buyer]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT (' ') FOR [contact]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT (' ') FOR [freight]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT ((1.0)) FOR [rate]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT ((0)) FOR [spread]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT ((0)) FOR [dateMatch]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT ((0)) FOR [rateOp]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT (' ') FOR [poUser]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT (' ') FOR [idInvc]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT ((0)) FOR [apBatch]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT ((0)) FOR [apEntry]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT (' ') FOR [distId]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT ((0)) FOR [taxIncl1]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT ((0)) FOR [taxIncl2]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT ((0)) FOR [taxIncl3]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT ((0)) FOR [taxIncl4]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT ((0)) FOR [taxIncl5]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT ((0)) FOR [taxBase1]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT ((0)) FOR [taxBase2]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT ((0)) FOR [taxBase3]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT ((0)) FOR [taxBase4]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT ((0)) FOR [taxBase5]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT ((0)) FOR [taxAmt1]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT ((0)) FOR [taxAmt2]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT ((0)) FOR [taxAmt3]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT ((0)) FOR [taxAmt4]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT ((0)) FOR [taxAmt5]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT ((0)) FOR [taxAmt]
ALTER TABLE [dbo].[MIPOH] ADD  DEFAULT (' ') FOR [fldXml]
ALTER TABLE [dbo].[MIPOH]  WITH CHECK ADD FOREIGN KEY([acctId])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIPOH]  WITH CHECK ADD FOREIGN KEY([bLocId])
REFERENCES [dbo].[MIDLOC] ([locId])
ALTER TABLE [dbo].[MIPOH]  WITH CHECK ADD FOREIGN KEY([homeCur])
REFERENCES [dbo].[MICCD] ([curId])
ALTER TABLE [dbo].[MIPOH]  WITH CHECK ADD FOREIGN KEY([jobId])
REFERENCES [dbo].[MIJOBH] ([jobId])
ALTER TABLE [dbo].[MIPOH]  WITH CHECK ADD FOREIGN KEY([locId])
REFERENCES [dbo].[MIDLOC] ([locId])
ALTER TABLE [dbo].[MIPOH]  WITH CHECK ADD FOREIGN KEY([srcCur])
REFERENCES [dbo].[MICCD] ([curId])
ALTER TABLE [dbo].[MIPOH]  WITH CHECK ADD FOREIGN KEY([suplId])
REFERENCES [dbo].[MISUPL] ([suplId])
ALTER TABLE [dbo].[MIPOH]  WITH CHECK ADD FOREIGN KEY([taxCode1])
REFERENCES [dbo].[MITXAUTH] ([auth])
ALTER TABLE [dbo].[MIPOH]  WITH CHECK ADD FOREIGN KEY([taxCode2])
REFERENCES [dbo].[MITXAUTH] ([auth])
ALTER TABLE [dbo].[MIPOH]  WITH CHECK ADD FOREIGN KEY([taxCode3])
REFERENCES [dbo].[MITXAUTH] ([auth])
ALTER TABLE [dbo].[MIPOH]  WITH CHECK ADD FOREIGN KEY([taxCode4])
REFERENCES [dbo].[MITXAUTH] ([auth])
ALTER TABLE [dbo].[MIPOH]  WITH CHECK ADD FOREIGN KEY([taxCode5])
REFERENCES [dbo].[MITXAUTH] ([auth])
