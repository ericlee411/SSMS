/****** Object:  Table [dbo].[MIPIBD]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIPIBD](
	[userId] [nvarchar](8) NOT NULL,
	[batchId] [nvarchar](6) NOT NULL,
	[bType] [smallint] NOT NULL,
	[entry] [int] NOT NULL,
	[lineNbr] [int] NOT NULL,
	[itemId] [nvarchar](24) NULL,
	[locId] [nvarchar](6) NULL,
	[type] [smallint] NOT NULL,
	[binId] [nvarchar](24) NULL,
	[dateISO] [nvarchar](8) NULL,
	[qty] [numeric](20, 6) NOT NULL,
	[wip] [numeric](20, 6) NOT NULL,
	[recQty] [numeric](20, 6) NOT NULL,
	[recWip] [numeric](20, 6) NOT NULL,
	[ticket] [nvarchar](30) NOT NULL,
	[comment] [nvarchar](60) NOT NULL,
	[status] [smallint] NOT NULL,
	[errId] [nvarchar](8) NULL,
	[date]  AS (CONVERT([datetime],[dateISO])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIPIBD_KEY_0] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[batchId] ASC,
	[bType] ASC,
	[entry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MIPIBD] ADD  DEFAULT ('000000') FOR [batchId]
ALTER TABLE [dbo].[MIPIBD] ADD  DEFAULT ((0)) FOR [bType]
ALTER TABLE [dbo].[MIPIBD] ADD  DEFAULT ((0)) FOR [entry]
ALTER TABLE [dbo].[MIPIBD] ADD  DEFAULT ((0)) FOR [lineNbr]
ALTER TABLE [dbo].[MIPIBD] ADD  DEFAULT ((0)) FOR [type]
ALTER TABLE [dbo].[MIPIBD] ADD  DEFAULT ((0)) FOR [qty]
ALTER TABLE [dbo].[MIPIBD] ADD  DEFAULT ((0)) FOR [wip]
ALTER TABLE [dbo].[MIPIBD] ADD  DEFAULT ((0)) FOR [recQty]
ALTER TABLE [dbo].[MIPIBD] ADD  DEFAULT ((0)) FOR [recWip]
ALTER TABLE [dbo].[MIPIBD] ADD  DEFAULT (' ') FOR [ticket]
ALTER TABLE [dbo].[MIPIBD] ADD  DEFAULT (' ') FOR [comment]
ALTER TABLE [dbo].[MIPIBD] ADD  DEFAULT ((0)) FOR [status]
ALTER TABLE [dbo].[MIPIBD]  WITH CHECK ADD FOREIGN KEY([itemId])
REFERENCES [dbo].[MIITEM] ([itemId])
ALTER TABLE [dbo].[MIPIBD]  WITH CHECK ADD FOREIGN KEY([locId])
REFERENCES [dbo].[MIDLOC] ([locId])
ALTER TABLE [dbo].[MIPIBD]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[MIUSER] ([userId])
ALTER TABLE [dbo].[MIPIBD]  WITH CHECK ADD  CONSTRAINT [FK_MIPIBD_MIPIBH] FOREIGN KEY([userId], [batchId], [bType])
REFERENCES [dbo].[MIPIBH] ([userId], [batchId], [bType])
ON DELETE CASCADE
ALTER TABLE [dbo].[MIPIBD] CHECK CONSTRAINT [FK_MIPIBD_MIPIBH]
