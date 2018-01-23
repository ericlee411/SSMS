/****** Object:  Table [dbo].[MIMTBDD]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIMTBDD](
	[userId] [nvarchar](8) NOT NULL,
	[batchId] [nvarchar](6) NOT NULL,
	[entry] [int] NOT NULL,
	[detail] [int] NOT NULL,
	[itemId] [nvarchar](24) NULL,
	[lotId] [nvarchar](40) NOT NULL,
	[lineNbr] [smallint] NOT NULL,
	[recQty] [numeric](20, 6) NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIMTBDD_KEY_0] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[batchId] ASC,
	[entry] ASC,
	[detail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MIMTBDD] ADD  DEFAULT ('000000') FOR [batchId]
ALTER TABLE [dbo].[MIMTBDD] ADD  DEFAULT ((0)) FOR [entry]
ALTER TABLE [dbo].[MIMTBDD] ADD  DEFAULT ((0)) FOR [detail]
ALTER TABLE [dbo].[MIMTBDD] ADD  DEFAULT ((0)) FOR [lineNbr]
ALTER TABLE [dbo].[MIMTBDD] ADD  DEFAULT ((0)) FOR [recQty]
ALTER TABLE [dbo].[MIMTBDD]  WITH CHECK ADD FOREIGN KEY([itemId])
REFERENCES [dbo].[MIITEM] ([itemId])
ALTER TABLE [dbo].[MIMTBDD]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[MIUSER] ([userId])
ALTER TABLE [dbo].[MIMTBDD]  WITH CHECK ADD  CONSTRAINT [FK_MIMTBDD_MIMTBH] FOREIGN KEY([userId], [batchId])
REFERENCES [dbo].[MIMTBH] ([userId], [batchId])
ON DELETE CASCADE
ALTER TABLE [dbo].[MIMTBDD] CHECK CONSTRAINT [FK_MIMTBDD_MIMTBH]
