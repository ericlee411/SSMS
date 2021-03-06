/****** Object:  Table [dbo].[MIQSUPD]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIQSUPD](
	[itemId] [nvarchar](24) NOT NULL,
	[suplId] [nvarchar](12) NOT NULL,
	[minQty] [int] NOT NULL,
	[dType] [int] NOT NULL,
	[price] [numeric](20, 6) NOT NULL,
	[discount] [numeric](20, 6) NOT NULL,
	[cmnt] [nvarchar](60) NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIQSUPD_KEY_0] PRIMARY KEY CLUSTERED 
(
	[itemId] ASC,
	[suplId] ASC,
	[minQty] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_PADDING ON

CREATE UNIQUE NONCLUSTERED INDEX [IDX_MIQSUPD_1] ON [dbo].[MIQSUPD]
(
	[suplId] ASC,
	[itemId] ASC,
	[minQty] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[MIQSUPD] ADD  DEFAULT (' ') FOR [itemId]
ALTER TABLE [dbo].[MIQSUPD] ADD  DEFAULT ((0)) FOR [minQty]
ALTER TABLE [dbo].[MIQSUPD] ADD  DEFAULT ((0)) FOR [dType]
ALTER TABLE [dbo].[MIQSUPD] ADD  DEFAULT ((0)) FOR [price]
ALTER TABLE [dbo].[MIQSUPD] ADD  DEFAULT ((0)) FOR [discount]
ALTER TABLE [dbo].[MIQSUPD] ADD  DEFAULT (' ') FOR [cmnt]
ALTER TABLE [dbo].[MIQSUPD]  WITH CHECK ADD FOREIGN KEY([suplId])
REFERENCES [dbo].[MISUPL] ([suplId])
ALTER TABLE [dbo].[MIQSUPD]  WITH CHECK ADD  CONSTRAINT [FK_MIQSUPD_MIITEM] FOREIGN KEY([itemId])
REFERENCES [dbo].[MIITEM] ([itemId])
ON DELETE CASCADE
ALTER TABLE [dbo].[MIQSUPD] CHECK CONSTRAINT [FK_MIQSUPD_MIITEM]
