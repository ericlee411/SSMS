/****** Object:  Table [dbo].[MIPOCV]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIPOCV](
	[pohId] [nvarchar](12) NOT NULL,
	[pohRev] [smallint] NOT NULL,
	[poSuplId] [nvarchar](12) NOT NULL,
	[name] [nvarchar](60) NOT NULL,
	[adr1] [nvarchar](60) NOT NULL,
	[adr2] [nvarchar](60) NOT NULL,
	[adr3] [nvarchar](60) NOT NULL,
	[adr4] [nvarchar](60) NOT NULL,
	[city] [nvarchar](30) NOT NULL,
	[state] [nvarchar](30) NOT NULL,
	[zip] [nvarchar](20) NOT NULL,
	[country] [nvarchar](30) NOT NULL,
	[phone] [nvarchar](30) NOT NULL,
	[fax] [nvarchar](30) NOT NULL,
	[contact] [nvarchar](60) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[terms] [nvarchar](6) NOT NULL,
	[curId] [nvarchar](3) NULL,
	[rateType] [nvarchar](2) NULL,
	[rateDate] [nvarchar](8) NULL,
	[rate] [numeric](20, 6) NOT NULL,
	[spread] [numeric](20, 6) NOT NULL,
	[dateMatch] [int] NOT NULL,
	[rateOper] [int] NOT NULL,
	[txGroup] [nvarchar](12) NULL,
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
	[rateDt]  AS (CONVERT([datetime],[rateDate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIPOCV_KEY_0] PRIMARY KEY CLUSTERED 
(
	[pohId] ASC,
	[pohRev] ASC,
	[poSuplId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MIPOCV] ADD  DEFAULT (' ') FOR [pohId]
ALTER TABLE [dbo].[MIPOCV] ADD  DEFAULT ((0)) FOR [pohRev]
ALTER TABLE [dbo].[MIPOCV] ADD  DEFAULT (' ') FOR [name]
ALTER TABLE [dbo].[MIPOCV] ADD  DEFAULT (' ') FOR [adr1]
ALTER TABLE [dbo].[MIPOCV] ADD  DEFAULT (' ') FOR [adr2]
ALTER TABLE [dbo].[MIPOCV] ADD  DEFAULT (' ') FOR [adr3]
ALTER TABLE [dbo].[MIPOCV] ADD  DEFAULT (' ') FOR [adr4]
ALTER TABLE [dbo].[MIPOCV] ADD  DEFAULT (' ') FOR [city]
ALTER TABLE [dbo].[MIPOCV] ADD  DEFAULT (' ') FOR [state]
ALTER TABLE [dbo].[MIPOCV] ADD  DEFAULT (' ') FOR [zip]
ALTER TABLE [dbo].[MIPOCV] ADD  DEFAULT (' ') FOR [country]
ALTER TABLE [dbo].[MIPOCV] ADD  DEFAULT (' ') FOR [phone]
ALTER TABLE [dbo].[MIPOCV] ADD  DEFAULT (' ') FOR [fax]
ALTER TABLE [dbo].[MIPOCV] ADD  DEFAULT (' ') FOR [contact]
ALTER TABLE [dbo].[MIPOCV] ADD  DEFAULT (' ') FOR [email]
ALTER TABLE [dbo].[MIPOCV] ADD  DEFAULT (' ') FOR [terms]
ALTER TABLE [dbo].[MIPOCV] ADD  DEFAULT ((1.0)) FOR [rate]
ALTER TABLE [dbo].[MIPOCV] ADD  DEFAULT ((0)) FOR [spread]
ALTER TABLE [dbo].[MIPOCV] ADD  DEFAULT ((0)) FOR [dateMatch]
ALTER TABLE [dbo].[MIPOCV] ADD  DEFAULT ((0)) FOR [rateOper]
ALTER TABLE [dbo].[MIPOCV]  WITH CHECK ADD FOREIGN KEY([curId])
REFERENCES [dbo].[MICCD] ([curId])
ALTER TABLE [dbo].[MIPOCV]  WITH CHECK ADD FOREIGN KEY([poSuplId])
REFERENCES [dbo].[MISUPL] ([suplId])
ALTER TABLE [dbo].[MIPOCV]  WITH CHECK ADD FOREIGN KEY([rateType])
REFERENCES [dbo].[MICRT] ([rateType])
ALTER TABLE [dbo].[MIPOCV]  WITH CHECK ADD FOREIGN KEY([taxCode1])
REFERENCES [dbo].[MITXAUTH] ([auth])
ALTER TABLE [dbo].[MIPOCV]  WITH CHECK ADD FOREIGN KEY([taxCode2])
REFERENCES [dbo].[MITXAUTH] ([auth])
ALTER TABLE [dbo].[MIPOCV]  WITH CHECK ADD FOREIGN KEY([taxCode3])
REFERENCES [dbo].[MITXAUTH] ([auth])
ALTER TABLE [dbo].[MIPOCV]  WITH CHECK ADD FOREIGN KEY([taxCode4])
REFERENCES [dbo].[MITXAUTH] ([auth])
ALTER TABLE [dbo].[MIPOCV]  WITH CHECK ADD FOREIGN KEY([taxCode5])
REFERENCES [dbo].[MITXAUTH] ([auth])
ALTER TABLE [dbo].[MIPOCV]  WITH CHECK ADD  CONSTRAINT [FK_MIPOCV_MIPOH] FOREIGN KEY([pohId], [pohRev])
REFERENCES [dbo].[MIPOH] ([pohId], [pohRev])
ON DELETE CASCADE
ALTER TABLE [dbo].[MIPOCV] CHECK CONSTRAINT [FK_MIPOCV_MIPOH]
