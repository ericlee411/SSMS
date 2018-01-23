/****** Object:  Table [dbo].[MICCD]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MICCD](
	[curId] [nvarchar](3) NOT NULL,
	[curName] [nvarchar](60) NOT NULL,
	[symbol] [nvarchar](4) NOT NULL,
	[decimals] [smallint] NOT NULL,
	[symPos] [smallint] NOT NULL,
	[thousSep] [nvarchar](1) NOT NULL,
	[decSep] [nvarchar](1) NOT NULL,
	[negDisp] [smallint] NOT NULL,
	[rateOper] [smallint] NOT NULL,
	[rate] [numeric](20, 6) NOT NULL,
	[cultureId] [nvarchar](8) NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MICCD_KEY_0] PRIMARY KEY CLUSTERED 
(
	[curId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MICCD] ADD  DEFAULT (' ') FOR [curId]
ALTER TABLE [dbo].[MICCD] ADD  DEFAULT (' ') FOR [curName]
ALTER TABLE [dbo].[MICCD] ADD  DEFAULT (' ') FOR [symbol]
ALTER TABLE [dbo].[MICCD] ADD  DEFAULT ((0)) FOR [decimals]
ALTER TABLE [dbo].[MICCD] ADD  DEFAULT ((0)) FOR [symPos]
ALTER TABLE [dbo].[MICCD] ADD  DEFAULT (' ') FOR [thousSep]
ALTER TABLE [dbo].[MICCD] ADD  DEFAULT (' ') FOR [decSep]
ALTER TABLE [dbo].[MICCD] ADD  DEFAULT ((2)) FOR [negDisp]
ALTER TABLE [dbo].[MICCD] ADD  DEFAULT ((1)) FOR [rateOper]
ALTER TABLE [dbo].[MICCD] ADD  DEFAULT ((1.0)) FOR [rate]
ALTER TABLE [dbo].[MICCD] ADD  DEFAULT ('en-US') FOR [cultureId]
