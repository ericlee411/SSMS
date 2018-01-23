/****** Object:  Table [dbo].[MITXRATE]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MITXRATE](
	[authority] [nvarchar](12) NOT NULL,
	[transType] [smallint] NOT NULL,
	[buyerClass] [int] NOT NULL,
	[itmRate1] [numeric](20, 6) NOT NULL,
	[itmRate2] [numeric](20, 6) NOT NULL,
	[itmRate3] [numeric](20, 6) NOT NULL,
	[itmRate4] [numeric](20, 6) NOT NULL,
	[itmRate5] [numeric](20, 6) NOT NULL,
	[itmRate6] [numeric](20, 6) NOT NULL,
	[itmRate7] [numeric](20, 6) NOT NULL,
	[itmRate8] [numeric](20, 6) NOT NULL,
	[itmRate9] [numeric](20, 6) NOT NULL,
	[itmRate10] [numeric](20, 6) NOT NULL,
	[lstMaintDt] [datetime] NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MITXRATE_KEY_0] PRIMARY KEY CLUSTERED 
(
	[authority] ASC,
	[transType] ASC,
	[buyerClass] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MITXRATE] ADD  DEFAULT ((1)) FOR [transType]
ALTER TABLE [dbo].[MITXRATE] ADD  DEFAULT ((1)) FOR [buyerClass]
ALTER TABLE [dbo].[MITXRATE] ADD  DEFAULT ((0)) FOR [itmRate1]
ALTER TABLE [dbo].[MITXRATE] ADD  DEFAULT ((0)) FOR [itmRate2]
ALTER TABLE [dbo].[MITXRATE] ADD  DEFAULT ((0)) FOR [itmRate3]
ALTER TABLE [dbo].[MITXRATE] ADD  DEFAULT ((0)) FOR [itmRate4]
ALTER TABLE [dbo].[MITXRATE] ADD  DEFAULT ((0)) FOR [itmRate5]
ALTER TABLE [dbo].[MITXRATE] ADD  DEFAULT ((0)) FOR [itmRate6]
ALTER TABLE [dbo].[MITXRATE] ADD  DEFAULT ((0)) FOR [itmRate7]
ALTER TABLE [dbo].[MITXRATE] ADD  DEFAULT ((0)) FOR [itmRate8]
ALTER TABLE [dbo].[MITXRATE] ADD  DEFAULT ((0)) FOR [itmRate9]
ALTER TABLE [dbo].[MITXRATE] ADD  DEFAULT ((0)) FOR [itmRate10]
ALTER TABLE [dbo].[MITXRATE]  WITH CHECK ADD FOREIGN KEY([authority])
REFERENCES [dbo].[MITXAUTH] ([auth])
