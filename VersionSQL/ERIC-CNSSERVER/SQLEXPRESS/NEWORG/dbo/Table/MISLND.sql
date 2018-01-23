/****** Object:  Table [dbo].[MISLND]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MISLND](
	[itemId] [nvarchar](24) NOT NULL,
	[lotId] [nvarchar](40) NOT NULL,
	[locId] [nvarchar](6) NOT NULL,
	[qStk] [numeric](20, 6) NOT NULL,
	[qWip] [numeric](20, 6) NOT NULL,
	[qUsed] [numeric](20, 6) NOT NULL,
	[qRcvd] [numeric](20, 6) NOT NULL,
	[qScrp] [numeric](20, 6) NOT NULL,
	[qBuilt] [numeric](20, 6) NOT NULL,
	[rcvdDate] [nvarchar](8) NULL,
	[rcvdDt]  AS (CONVERT([datetime],[rcvdDate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MISLND_KEY_0] PRIMARY KEY CLUSTERED 
(
	[itemId] ASC,
	[lotId] ASC,
	[locId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MISLND] ADD  DEFAULT (' ') FOR [itemId]
ALTER TABLE [dbo].[MISLND] ADD  DEFAULT (' ') FOR [lotId]
ALTER TABLE [dbo].[MISLND] ADD  DEFAULT ((0)) FOR [qStk]
ALTER TABLE [dbo].[MISLND] ADD  DEFAULT ((0)) FOR [qWip]
ALTER TABLE [dbo].[MISLND] ADD  DEFAULT ((0)) FOR [qUsed]
ALTER TABLE [dbo].[MISLND] ADD  DEFAULT ((0)) FOR [qRcvd]
ALTER TABLE [dbo].[MISLND] ADD  DEFAULT ((0)) FOR [qScrp]
ALTER TABLE [dbo].[MISLND] ADD  DEFAULT ((0)) FOR [qBuilt]
ALTER TABLE [dbo].[MISLND]  WITH CHECK ADD FOREIGN KEY([locId])
REFERENCES [dbo].[MIDLOC] ([locId])
ALTER TABLE [dbo].[MISLND]  WITH CHECK ADD  CONSTRAINT [FK_MISLND_MISLNH] FOREIGN KEY([itemId], [lotId])
REFERENCES [dbo].[MISLNH] ([itemId], [lotId])
ON DELETE CASCADE
ALTER TABLE [dbo].[MISLND] CHECK CONSTRAINT [FK_MISLND_MISLNH]
