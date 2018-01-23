/****** Object:  Table [dbo].[MIPIBDD]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIPIBDD](
	[userId] [nvarchar](8) NOT NULL,
	[batchId] [nvarchar](6) NOT NULL,
	[bType] [smallint] NOT NULL,
	[entry] [int] NOT NULL,
	[detail] [int] NOT NULL,
	[itemId] [nvarchar](24) NULL,
	[locId] [nvarchar](6) NULL,
	[binId] [nvarchar](24) NULL,
	[lotId] [nvarchar](40) NOT NULL,
	[qty] [numeric](20, 6) NOT NULL,
	[wip] [numeric](20, 6) NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIPIBDD_KEY_0] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[batchId] ASC,
	[bType] ASC,
	[entry] ASC,
	[detail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MIPIBDD] ADD  DEFAULT ('000000') FOR [batchId]
ALTER TABLE [dbo].[MIPIBDD] ADD  DEFAULT ((0)) FOR [bType]
ALTER TABLE [dbo].[MIPIBDD] ADD  DEFAULT ((0)) FOR [entry]
ALTER TABLE [dbo].[MIPIBDD] ADD  DEFAULT ((0)) FOR [detail]
ALTER TABLE [dbo].[MIPIBDD] ADD  DEFAULT (' ') FOR [lotId]
ALTER TABLE [dbo].[MIPIBDD] ADD  DEFAULT ((0)) FOR [qty]
ALTER TABLE [dbo].[MIPIBDD] ADD  DEFAULT ((0)) FOR [wip]
ALTER TABLE [dbo].[MIPIBDD]  WITH CHECK ADD FOREIGN KEY([itemId])
REFERENCES [dbo].[MIITEM] ([itemId])
ALTER TABLE [dbo].[MIPIBDD]  WITH CHECK ADD FOREIGN KEY([locId])
REFERENCES [dbo].[MIDLOC] ([locId])
ALTER TABLE [dbo].[MIPIBDD]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[MIUSER] ([userId])
ALTER TABLE [dbo].[MIPIBDD]  WITH CHECK ADD  CONSTRAINT [FK_MIPIBDD_MIPIBH] FOREIGN KEY([userId], [batchId], [bType])
REFERENCES [dbo].[MIPIBH] ([userId], [batchId], [bType])
ON DELETE CASCADE
ALTER TABLE [dbo].[MIPIBDD] CHECK CONSTRAINT [FK_MIPIBDD_MIPIBH]
