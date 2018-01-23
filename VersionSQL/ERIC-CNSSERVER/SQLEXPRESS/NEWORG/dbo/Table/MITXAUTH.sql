/****** Object:  Table [dbo].[MITXAUTH]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MITXAUTH](
	[auth] [nvarchar](12) NOT NULL,
	[descr] [nvarchar](60) NOT NULL,
	[srcCur] [nvarchar](3) NULL,
	[maxTax] [numeric](20, 6) NOT NULL,
	[minTax] [numeric](20, 6) NOT NULL,
	[txBase] [smallint] NOT NULL,
	[includable] [bit] NOT NULL,
	[liability] [nvarchar](45) NOT NULL,
	[auditLvl] [smallint] NOT NULL,
	[recoverable] [bit] NOT NULL,
	[recovRate] [numeric](20, 6) NOT NULL,
	[recovAcct] [nvarchar](45) NOT NULL,
	[expSep] [bit] NOT NULL,
	[expAcct] [nvarchar](45) NOT NULL,
	[lstMaintDt] [datetime] NULL,
	[taxType] [smallint] NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MITXAUTH_KEY_0] PRIMARY KEY CLUSTERED 
(
	[auth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MITXAUTH] ADD  DEFAULT (' ') FOR [auth]
ALTER TABLE [dbo].[MITXAUTH] ADD  DEFAULT (' ') FOR [descr]
ALTER TABLE [dbo].[MITXAUTH] ADD  DEFAULT ((999999999999.000)) FOR [maxTax]
ALTER TABLE [dbo].[MITXAUTH] ADD  DEFAULT ((0)) FOR [minTax]
ALTER TABLE [dbo].[MITXAUTH] ADD  DEFAULT ((0)) FOR [txBase]
ALTER TABLE [dbo].[MITXAUTH] ADD  DEFAULT ((0)) FOR [includable]
ALTER TABLE [dbo].[MITXAUTH] ADD  DEFAULT (' ') FOR [liability]
ALTER TABLE [dbo].[MITXAUTH] ADD  DEFAULT ((0)) FOR [auditLvl]
ALTER TABLE [dbo].[MITXAUTH] ADD  DEFAULT ((0)) FOR [recoverable]
ALTER TABLE [dbo].[MITXAUTH] ADD  DEFAULT ((0)) FOR [recovRate]
ALTER TABLE [dbo].[MITXAUTH] ADD  DEFAULT (' ') FOR [recovAcct]
ALTER TABLE [dbo].[MITXAUTH] ADD  DEFAULT ((0)) FOR [expSep]
ALTER TABLE [dbo].[MITXAUTH] ADD  DEFAULT (' ') FOR [expAcct]
ALTER TABLE [dbo].[MITXAUTH] ADD  DEFAULT ((0)) FOR [taxType]
ALTER TABLE [dbo].[MITXAUTH]  WITH CHECK ADD FOREIGN KEY([srcCur])
REFERENCES [dbo].[MICCD] ([curId])
