/****** Object:  Table [dbo].[MISUPL]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MISUPL](
	[suplId] [nvarchar](12) NOT NULL,
	[shortName] [nvarchar](10) NOT NULL,
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
	[ref] [nvarchar](20) NOT NULL,
	[terms] [nvarchar](30) NOT NULL,
	[volume] [numeric](20, 6) NOT NULL,
	[ordCount] [int] NOT NULL,
	[ordOvrCnt] [int] NOT NULL,
	[daysTotal] [int] NOT NULL,
	[daysLate] [int] NOT NULL,
	[ordLstDate] [nvarchar](8) NULL,
	[poLst] [nvarchar](12) NULL,
	[cur] [nvarchar](3) NULL,
	[rateType] [nvarchar](2) NULL,
	[txGroup] [nvarchar](12) NULL,
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
	[taxReg1] [nvarchar](20) NOT NULL,
	[taxReg2] [nvarchar](20) NOT NULL,
	[taxReg3] [nvarchar](20) NOT NULL,
	[taxReg4] [nvarchar](20) NOT NULL,
	[taxReg5] [nvarchar](20) NOT NULL,
	[acctId] [nvarchar](45) NULL,
	[distId] [nvarchar](6) NULL,
	[shpVia] [nvarchar](20) NOT NULL,
	[fob] [nvarchar](20) NOT NULL,
	[freight] [nvarchar](20) NOT NULL,
	[emailFmt] [smallint] NOT NULL,
	[poPrefer] [smallint] NOT NULL,
	[supStatus] [smallint] NOT NULL,
	[email1] [nvarchar](255) NOT NULL,
	[email2] [nvarchar](255) NOT NULL,
	[website] [nvarchar](100) NOT NULL,
	[notes] [nvarchar](2000) NOT NULL,
	[fldXml] [text] NOT NULL,
	[ordLstDt]  AS (CONVERT([datetime],[ordLstDate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MISUPL_KEY_0] PRIMARY KEY CLUSTERED 
(
	[suplId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT (' ') FOR [suplId]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT (' ') FOR [shortName]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT (' ') FOR [name]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT (' ') FOR [adr1]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT (' ') FOR [adr2]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT (' ') FOR [adr3]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT (' ') FOR [adr4]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT (' ') FOR [city]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT (' ') FOR [state]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT (' ') FOR [zip]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT (' ') FOR [country]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT (' ') FOR [phone]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT (' ') FOR [fax]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT (' ') FOR [contact]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT (' ') FOR [ref]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT (' ') FOR [terms]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT ((0)) FOR [volume]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT ((0)) FOR [ordCount]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT ((0)) FOR [ordOvrCnt]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT ((0)) FOR [daysTotal]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT ((0)) FOR [daysLate]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT ((0)) FOR [taxClass1]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT ((0)) FOR [taxClass2]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT ((0)) FOR [taxClass3]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT ((0)) FOR [taxClass4]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT ((0)) FOR [taxClass5]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT (' ') FOR [taxReg1]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT (' ') FOR [taxReg2]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT (' ') FOR [taxReg3]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT (' ') FOR [taxReg4]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT (' ') FOR [taxReg5]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT (' ') FOR [shpVia]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT (' ') FOR [fob]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT (' ') FOR [freight]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT ((0)) FOR [emailFmt]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT ((0)) FOR [poPrefer]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT ((0)) FOR [supStatus]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT (' ') FOR [email1]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT (' ') FOR [email2]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT ('http://') FOR [website]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT (' ') FOR [notes]
ALTER TABLE [dbo].[MISUPL] ADD  DEFAULT (' ') FOR [fldXml]
ALTER TABLE [dbo].[MISUPL]  WITH CHECK ADD FOREIGN KEY([acctId])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MISUPL]  WITH CHECK ADD FOREIGN KEY([cur])
REFERENCES [dbo].[MICCD] ([curId])
ALTER TABLE [dbo].[MISUPL]  WITH CHECK ADD FOREIGN KEY([rateType])
REFERENCES [dbo].[MICRT] ([rateType])
ALTER TABLE [dbo].[MISUPL]  WITH CHECK ADD FOREIGN KEY([taxCode1])
REFERENCES [dbo].[MITXAUTH] ([auth])
ALTER TABLE [dbo].[MISUPL]  WITH CHECK ADD FOREIGN KEY([taxCode2])
REFERENCES [dbo].[MITXAUTH] ([auth])
ALTER TABLE [dbo].[MISUPL]  WITH CHECK ADD FOREIGN KEY([taxCode3])
REFERENCES [dbo].[MITXAUTH] ([auth])
ALTER TABLE [dbo].[MISUPL]  WITH CHECK ADD FOREIGN KEY([taxCode4])
REFERENCES [dbo].[MITXAUTH] ([auth])
ALTER TABLE [dbo].[MISUPL]  WITH CHECK ADD FOREIGN KEY([taxCode5])
REFERENCES [dbo].[MITXAUTH] ([auth])
