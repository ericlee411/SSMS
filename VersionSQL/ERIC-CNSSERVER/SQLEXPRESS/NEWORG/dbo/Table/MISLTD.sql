/****** Object:  Table [dbo].[MISLTD]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MISLTD](
	[tranDate] [nvarchar](8) NOT NULL,
	[userId] [nvarchar](8) NOT NULL,
	[entry] [int] NOT NULL,
	[detail] [int] NOT NULL,
	[prntLotId] [nvarchar](40) NOT NULL,
	[trnQty] [numeric](20, 6) NOT NULL,
	[recQty] [numeric](20, 6) NOT NULL,
	[itemId] [nvarchar](24) NULL,
	[prntItemId] [nvarchar](24) NULL,
	[tranDt]  AS (CONVERT([datetime],[tranDate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MISLTD_KEY_0] PRIMARY KEY CLUSTERED 
(
	[tranDate] ASC,
	[userId] ASC,
	[entry] ASC,
	[detail] ASC,
	[prntLotId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MISLTD] ADD  DEFAULT (' ') FOR [userId]
ALTER TABLE [dbo].[MISLTD] ADD  DEFAULT ((0)) FOR [entry]
ALTER TABLE [dbo].[MISLTD] ADD  DEFAULT ((0)) FOR [detail]
ALTER TABLE [dbo].[MISLTD] ADD  DEFAULT ((0)) FOR [trnQty]
ALTER TABLE [dbo].[MISLTD] ADD  DEFAULT ((0)) FOR [recQty]
ALTER TABLE [dbo].[MISLTD]  WITH CHECK ADD  CONSTRAINT [FK_MISLTD_MISLTH] FOREIGN KEY([tranDate], [userId], [entry], [detail])
REFERENCES [dbo].[MISLTH] ([tranDate], [userId], [entry], [detail])
ON DELETE CASCADE
ALTER TABLE [dbo].[MISLTD] CHECK CONSTRAINT [FK_MISLTD_MISLTH]
