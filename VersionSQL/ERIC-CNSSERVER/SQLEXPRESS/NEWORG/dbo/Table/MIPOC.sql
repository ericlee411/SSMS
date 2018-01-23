/****** Object:  Table [dbo].[MIPOC]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIPOC](
	[pohId] [nvarchar](12) NOT NULL,
	[pohRev] [smallint] NOT NULL,
	[pocId] [int] NOT NULL,
	[lineNbr] [smallint] NOT NULL,
	[suplId] [nvarchar](12) NULL,
	[addCostId] [nvarchar](8) NULL,
	[dStatus] [smallint] NOT NULL,
	[curId] [nvarchar](3) NULL,
	[poDate] [nvarchar](8) NULL,
	[amt] [numeric](20, 6) NOT NULL,
	[descr] [nvarchar](60) NOT NULL,
	[prorMeth] [smallint] NOT NULL,
	[glAcct] [nvarchar](45) NULL,
	[cmnt] [nvarchar](70) NOT NULL,
	[taxCode1] [nvarchar](12) NULL,
	[taxCode2] [nvarchar](12) NULL,
	[taxCode3] [nvarchar](12) NULL,
	[taxCode4] [nvarchar](12) NULL,
	[taxCode5] [nvarchar](12) NULL,
	[taxClass1] [int] NULL,
	[taxClass2] [int] NULL,
	[taxClass3] [int] NULL,
	[taxClass4] [int] NULL,
	[taxClass5] [int] NULL,
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
	[rateOper] [int] NOT NULL,
	[taxAmt] [numeric](20, 6) NOT NULL,
	[amtProRate] [numeric](20, 6) NOT NULL,
	[invoiceNo] [nvarchar](22) NOT NULL,
	[invoiced] [bit] NOT NULL,
	[amtInvoiced] [numeric](20, 6) NOT NULL,
	[poDt]  AS (CONVERT([datetime],[poDate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIPOC_KEY_0] PRIMARY KEY CLUSTERED 
(
	[pohId] ASC,
	[pohRev] ASC,
	[pocId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IDX_MIPOC_1] ON [dbo].[MIPOC]
(
	[suplId] ASC,
	[pohId] ASC,
	[pohRev] ASC,
	[pocId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IDX_MIPOC_2] ON [dbo].[MIPOC]
(
	[addCostId] ASC,
	[pohId] ASC,
	[pohRev] ASC,
	[pocId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT (' ') FOR [pohId]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT ((0)) FOR [pohRev]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT ((0)) FOR [pocId]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT ((0)) FOR [lineNbr]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT ((0)) FOR [dStatus]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT ((0)) FOR [amt]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT (' ') FOR [descr]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT ((0)) FOR [prorMeth]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT (' ') FOR [cmnt]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT ((0)) FOR [taxBase1]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT ((0)) FOR [taxBase2]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT ((0)) FOR [taxBase3]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT ((0)) FOR [taxBase4]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT ((0)) FOR [taxBase5]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT ((0)) FOR [taxRate1]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT ((0)) FOR [taxRate2]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT ((0)) FOR [taxRate3]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT ((0)) FOR [taxRate4]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT ((0)) FOR [taxRate5]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT ((0)) FOR [taxAmt1]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT ((0)) FOR [taxAmt2]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT ((0)) FOR [taxAmt3]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT ((0)) FOR [taxAmt4]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT ((0)) FOR [taxAmt5]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT ((0)) FOR [taxIncl1]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT ((0)) FOR [taxIncl2]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT ((0)) FOR [taxIncl3]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT ((0)) FOR [taxIncl4]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT ((0)) FOR [taxIncl5]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT ((1.0)) FOR [rate]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT ((0)) FOR [rateOper]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT ((0)) FOR [taxAmt]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT ((0)) FOR [amtProRate]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT (' ') FOR [invoiceNo]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT ((0)) FOR [invoiced]
ALTER TABLE [dbo].[MIPOC] ADD  DEFAULT ((0)) FOR [amtInvoiced]
ALTER TABLE [dbo].[MIPOC]  WITH CHECK ADD FOREIGN KEY([addCostId])
REFERENCES [dbo].[MIACST] ([addCostId])
ALTER TABLE [dbo].[MIPOC]  WITH CHECK ADD FOREIGN KEY([curId])
REFERENCES [dbo].[MICCD] ([curId])
ALTER TABLE [dbo].[MIPOC]  WITH CHECK ADD FOREIGN KEY([glAcct])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIPOC]  WITH CHECK ADD FOREIGN KEY([suplId])
REFERENCES [dbo].[MISUPL] ([suplId])
ALTER TABLE [dbo].[MIPOC]  WITH CHECK ADD FOREIGN KEY([taxCode1])
REFERENCES [dbo].[MITXAUTH] ([auth])
ALTER TABLE [dbo].[MIPOC]  WITH CHECK ADD FOREIGN KEY([taxCode2])
REFERENCES [dbo].[MITXAUTH] ([auth])
ALTER TABLE [dbo].[MIPOC]  WITH CHECK ADD FOREIGN KEY([taxCode3])
REFERENCES [dbo].[MITXAUTH] ([auth])
ALTER TABLE [dbo].[MIPOC]  WITH CHECK ADD FOREIGN KEY([taxCode4])
REFERENCES [dbo].[MITXAUTH] ([auth])
ALTER TABLE [dbo].[MIPOC]  WITH CHECK ADD FOREIGN KEY([taxCode5])
REFERENCES [dbo].[MITXAUTH] ([auth])
ALTER TABLE [dbo].[MIPOC]  WITH CHECK ADD  CONSTRAINT [FK_MIPOC_MIPOH] FOREIGN KEY([pohId], [pohRev])
REFERENCES [dbo].[MIPOH] ([pohId], [pohRev])
ON DELETE CASCADE
ALTER TABLE [dbo].[MIPOC] CHECK CONSTRAINT [FK_MIPOC_MIPOH]
