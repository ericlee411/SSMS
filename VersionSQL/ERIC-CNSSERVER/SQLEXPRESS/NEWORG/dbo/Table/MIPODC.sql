/****** Object:  Table [dbo].[MIPODC]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIPODC](
	[pohId] [nvarchar](12) NOT NULL,
	[pohRev] [smallint] NOT NULL,
	[podLn] [int] NOT NULL,
	[pocId] [int] NOT NULL,
	[suplId] [nvarchar](12) NULL,
	[addCostId] [nvarchar](8) NULL,
	[poDate] [nvarchar](8) NULL,
	[qty] [numeric](20, 6) NOT NULL,
	[amt] [numeric](20, 6) NOT NULL,
	[taxAmt] [numeric](20, 6) NOT NULL,
	[descr] [nvarchar](60) NOT NULL,
	[price] [numeric](20, 6) NOT NULL,
	[extPrice] [numeric](20, 6) NOT NULL,
	[extWgt] [numeric](20, 6) NOT NULL,
	[include] [smallint] NOT NULL,
	[processed] [bit] NOT NULL,
	[fAmt] [numeric](20, 6) NOT NULL,
	[fTaxAmt] [numeric](20, 6) NOT NULL,
	[srcCur] [nvarchar](3) NULL,
	[poDt]  AS (CONVERT([datetime],[poDate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIPODC_KEY_0] PRIMARY KEY CLUSTERED 
(
	[pohId] ASC,
	[pohRev] ASC,
	[podLn] ASC,
	[pocId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MIPODC] ADD  DEFAULT (' ') FOR [pohId]
ALTER TABLE [dbo].[MIPODC] ADD  DEFAULT (' ') FOR [pohRev]
ALTER TABLE [dbo].[MIPODC] ADD  DEFAULT ((0)) FOR [podLn]
ALTER TABLE [dbo].[MIPODC] ADD  DEFAULT ((0)) FOR [pocId]
ALTER TABLE [dbo].[MIPODC] ADD  DEFAULT ((0)) FOR [qty]
ALTER TABLE [dbo].[MIPODC] ADD  DEFAULT ((0)) FOR [amt]
ALTER TABLE [dbo].[MIPODC] ADD  DEFAULT ((0)) FOR [taxAmt]
ALTER TABLE [dbo].[MIPODC] ADD  DEFAULT (' ') FOR [descr]
ALTER TABLE [dbo].[MIPODC] ADD  DEFAULT ((0)) FOR [price]
ALTER TABLE [dbo].[MIPODC] ADD  DEFAULT ((0)) FOR [extPrice]
ALTER TABLE [dbo].[MIPODC] ADD  DEFAULT ((0)) FOR [extWgt]
ALTER TABLE [dbo].[MIPODC] ADD  DEFAULT ((0)) FOR [include]
ALTER TABLE [dbo].[MIPODC] ADD  DEFAULT ((0)) FOR [processed]
ALTER TABLE [dbo].[MIPODC] ADD  DEFAULT ((0)) FOR [fAmt]
ALTER TABLE [dbo].[MIPODC] ADD  DEFAULT ((0)) FOR [fTaxAmt]
ALTER TABLE [dbo].[MIPODC]  WITH CHECK ADD FOREIGN KEY([addCostId])
REFERENCES [dbo].[MIACST] ([addCostId])
ALTER TABLE [dbo].[MIPODC]  WITH CHECK ADD FOREIGN KEY([srcCur])
REFERENCES [dbo].[MICCD] ([curId])
ALTER TABLE [dbo].[MIPODC]  WITH CHECK ADD FOREIGN KEY([suplId])
REFERENCES [dbo].[MISUPL] ([suplId])
ALTER TABLE [dbo].[MIPODC]  WITH CHECK ADD  CONSTRAINT [FK_MIPODC_MIPOH] FOREIGN KEY([pohId], [pohRev])
REFERENCES [dbo].[MIPOH] ([pohId], [pohRev])
ON DELETE CASCADE
ALTER TABLE [dbo].[MIPODC] CHECK CONSTRAINT [FK_MIPODC_MIPOH]
