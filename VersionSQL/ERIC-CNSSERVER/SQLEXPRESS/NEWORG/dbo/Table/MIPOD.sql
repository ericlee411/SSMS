/****** Object:  Table [dbo].[MIPOD]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIPOD](
	[pohId] [nvarchar](12) NOT NULL,
	[pohRev] [smallint] NOT NULL,
	[podId] [int] NOT NULL,
	[dType] [smallint] NOT NULL,
	[dStatus] [smallint] NOT NULL,
	[invoiced] [smallint] NOT NULL,
	[jobId] [nvarchar](12) NULL,
	[locId] [nvarchar](6) NULL,
	[itemId] [nvarchar](24) NULL,
	[ordered] [numeric](20, 6) NOT NULL,
	[received] [numeric](20, 6) NOT NULL,
	[price] [numeric](20, 6) NOT NULL,
	[cost] [numeric](20, 6) NOT NULL,
	[qInvoiced] [numeric](20, 6) NOT NULL,
	[cInvoiced] [numeric](20, 6) NOT NULL,
	[adCost] [numeric](20, 6) NOT NULL,
	[initDueDate] [nvarchar](8) NULL,
	[realDueDate] [nvarchar](8) NULL,
	[promisedDate] [nvarchar](8) NULL,
	[lastRecvDate] [nvarchar](8) NULL,
	[descr] [nvarchar](60) NOT NULL,
	[mfgId] [nvarchar](12) NULL,
	[viCode] [nvarchar](255) NOT NULL,
	[poUOfM] [nvarchar](20) NOT NULL,
	[poXStk] [numeric](20, 6) NOT NULL,
	[acctId] [nvarchar](45) NULL,
	[idDist] [nvarchar](6) NULL,
	[cmt] [nvarchar](70) NOT NULL,
	[taxCode1] [nvarchar](12) NULL,
	[taxCode2] [nvarchar](12) NULL,
	[taxCode3] [nvarchar](12) NULL,
	[taxCode4] [nvarchar](12) NULL,
	[taxCode5] [nvarchar](12) NULL,
	[taxClass1] [smallint] NOT NULL,
	[taxClass2] [smallint] NOT NULL,
	[taxClass3] [smallint] NOT NULL,
	[taxClass4] [smallint] NOT NULL,
	[taxClass5] [smallint] NOT NULL,
	[taxBase1] [numeric](20, 6) NOT NULL,
	[taxBase2] [numeric](20, 6) NOT NULL,
	[taxBase3] [numeric](20, 6) NOT NULL,
	[taxBase4] [numeric](20, 6) NOT NULL,
	[taxBase5] [numeric](20, 6) NOT NULL,
	[taxRate1] [numeric](20, 6) NOT NULL,
	[taxRate2] [numeric](20, 6) NOT NULL,
	[taxRate3] [numeric](20, 6) NOT NULL,
	[taxRate4] [numeric](20, 6) NOT NULL,
	[taxRate5] [numeric](20, 6) NOT NULL,
	[taxAmt1] [numeric](20, 6) NOT NULL,
	[taxAmt2] [numeric](20, 6) NOT NULL,
	[taxAmt3] [numeric](20, 6) NOT NULL,
	[taxAmt4] [numeric](20, 6) NOT NULL,
	[taxAmt5] [numeric](20, 6) NOT NULL,
	[taxIncl1] [smallint] NOT NULL,
	[taxIncl2] [smallint] NOT NULL,
	[taxIncl3] [smallint] NOT NULL,
	[taxIncl4] [smallint] NOT NULL,
	[taxIncl5] [smallint] NOT NULL,
	[rate] [numeric](20, 6) NOT NULL,
	[rateOper] [smallint] NOT NULL,
	[lineNbr] [smallint] NOT NULL,
	[unitWgt] [numeric](20, 6) NOT NULL,
	[addCost] [numeric](20, 6) NOT NULL,
	[mohId] [nvarchar](15) NULL,
	[momdId] [int] NOT NULL,
	[fldXml] [text] NOT NULL,
	[initDueDt]  AS (CONVERT([datetime],[initDueDate])),
	[realDueDt]  AS (CONVERT([datetime],[realDueDate])),
	[promisedDt]  AS (CONVERT([datetime],[promisedDate])),
	[lastRecvDt]  AS (CONVERT([datetime],[lastRecvDate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIPOD_KEY_0] PRIMARY KEY CLUSTERED 
(
	[pohId] ASC,
	[pohRev] ASC,
	[podId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IDX_MIPOD_1] ON [dbo].[MIPOD]
(
	[itemId] ASC,
	[pohId] ASC,
	[pohRev] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IDX_MIPOD_2] ON [dbo].[MIPOD]
(
	[pohId] ASC,
	[pohRev] ASC,
	[lineNbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT (' ') FOR [pohId]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [pohRev]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [podId]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [dType]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [dStatus]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [invoiced]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [ordered]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [received]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [price]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [cost]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [qInvoiced]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [cInvoiced]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [adCost]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT (' ') FOR [descr]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT (' ') FOR [viCode]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT (' ') FOR [poUOfM]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((1.0)) FOR [poXStk]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT (' ') FOR [cmt]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [taxClass1]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [taxClass2]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [taxClass3]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [taxClass4]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [taxClass5]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [taxBase1]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [taxBase2]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [taxBase3]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [taxBase4]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [taxBase5]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [taxRate1]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [taxRate2]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [taxRate3]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [taxRate4]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [taxRate5]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [taxAmt1]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [taxAmt2]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [taxAmt3]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [taxAmt4]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [taxAmt5]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [taxIncl1]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [taxIncl2]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [taxIncl3]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [taxIncl4]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [taxIncl5]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((1.0)) FOR [rate]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((1)) FOR [rateOper]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [lineNbr]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [unitWgt]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [addCost]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT (' ') FOR [mohId]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT ((0)) FOR [momdId]
ALTER TABLE [dbo].[MIPOD] ADD  DEFAULT (' ') FOR [fldXml]
ALTER TABLE [dbo].[MIPOD]  WITH CHECK ADD FOREIGN KEY([acctId])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIPOD]  WITH CHECK ADD FOREIGN KEY([itemId])
REFERENCES [dbo].[MIITEM] ([itemId])
ALTER TABLE [dbo].[MIPOD]  WITH CHECK ADD FOREIGN KEY([jobId])
REFERENCES [dbo].[MIJOBH] ([jobId])
ALTER TABLE [dbo].[MIPOD]  WITH CHECK ADD FOREIGN KEY([locId])
REFERENCES [dbo].[MIDLOC] ([locId])
ALTER TABLE [dbo].[MIPOD]  WITH CHECK ADD FOREIGN KEY([taxCode1])
REFERENCES [dbo].[MITXAUTH] ([auth])
ALTER TABLE [dbo].[MIPOD]  WITH CHECK ADD FOREIGN KEY([taxCode2])
REFERENCES [dbo].[MITXAUTH] ([auth])
ALTER TABLE [dbo].[MIPOD]  WITH CHECK ADD FOREIGN KEY([taxCode3])
REFERENCES [dbo].[MITXAUTH] ([auth])
ALTER TABLE [dbo].[MIPOD]  WITH CHECK ADD FOREIGN KEY([taxCode4])
REFERENCES [dbo].[MITXAUTH] ([auth])
ALTER TABLE [dbo].[MIPOD]  WITH CHECK ADD FOREIGN KEY([taxCode5])
REFERENCES [dbo].[MITXAUTH] ([auth])
ALTER TABLE [dbo].[MIPOD]  WITH CHECK ADD  CONSTRAINT [FK_MIPOD_MIPOH] FOREIGN KEY([pohId], [pohRev])
REFERENCES [dbo].[MIPOH] ([pohId], [pohRev])
ON DELETE CASCADE
ALTER TABLE [dbo].[MIPOD] CHECK CONSTRAINT [FK_MIPOD_MIPOH]
