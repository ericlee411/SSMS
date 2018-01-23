/****** Object:  Table [dbo].[MICRTD]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MICRTD](
	[homeCur] [nvarchar](3) NOT NULL,
	[rateType] [nvarchar](2) NOT NULL,
	[srcCur] [nvarchar](3) NOT NULL,
	[rateDate] [nvarchar](8) NOT NULL,
	[rate] [numeric](20, 6) NOT NULL,
	[spread] [numeric](20, 6) NOT NULL,
	[dateMatch] [smallint] NOT NULL,
	[rateOper] [smallint] NOT NULL,
	[rateDt]  AS (CONVERT([datetime],[rateDate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MICRTD_KEY_0] PRIMARY KEY CLUSTERED 
(
	[homeCur] ASC,
	[rateType] ASC,
	[srcCur] ASC,
	[rateDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MICRTD] ADD  DEFAULT (' ') FOR [homeCur]
ALTER TABLE [dbo].[MICRTD] ADD  DEFAULT (' ') FOR [rateType]
ALTER TABLE [dbo].[MICRTD] ADD  DEFAULT ((1.0)) FOR [rate]
ALTER TABLE [dbo].[MICRTD] ADD  DEFAULT ((0)) FOR [spread]
ALTER TABLE [dbo].[MICRTD] ADD  DEFAULT ((3)) FOR [dateMatch]
ALTER TABLE [dbo].[MICRTD] ADD  DEFAULT ((1)) FOR [rateOper]
ALTER TABLE [dbo].[MICRTD]  WITH CHECK ADD FOREIGN KEY([srcCur])
REFERENCES [dbo].[MICCD] ([curId])
ALTER TABLE [dbo].[MICRTD]  WITH CHECK ADD  CONSTRAINT [FK_MICRTD_MICRTH] FOREIGN KEY([homeCur], [rateType])
REFERENCES [dbo].[MICRTH] ([homeCur], [rateType])
ON DELETE CASCADE
ALTER TABLE [dbo].[MICRTD] CHECK CONSTRAINT [FK_MICRTD_MICRTH]
