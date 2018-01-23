/****** Object:  Table [dbo].[MIPIWS]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIPIWS](
	[userId] [nvarchar](8) NOT NULL,
	[sortField] [nvarchar](30) NOT NULL,
	[itemId] [nvarchar](24) NOT NULL,
	[binId] [nvarchar](24) NOT NULL,
	[seqNo] [nvarchar](3) NOT NULL,
	[locId] [nvarchar](6) NULL,
	[pick] [nvarchar](24) NULL,
	[recQty] [numeric](20, 6) NOT NULL,
	[recWip] [numeric](20, 6) NOT NULL,
	[status] [smallint] NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIPIWS_KEY_0] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[sortField] ASC,
	[itemId] ASC,
	[binId] ASC,
	[seqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MIPIWS] ADD  DEFAULT ((0)) FOR [recQty]
ALTER TABLE [dbo].[MIPIWS] ADD  DEFAULT ((0)) FOR [recWip]
ALTER TABLE [dbo].[MIPIWS] ADD  DEFAULT ((0)) FOR [status]
ALTER TABLE [dbo].[MIPIWS]  WITH CHECK ADD FOREIGN KEY([itemId])
REFERENCES [dbo].[MIITEM] ([itemId])
ALTER TABLE [dbo].[MIPIWS]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[MIUSER] ([userId])
