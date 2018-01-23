/****** Object:  Table [dbo].[MIMOWR]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIMOWR](
	[wcId] [nvarchar](24) NOT NULL,
	[entry] [int] NOT NULL,
	[type] [smallint] NOT NULL,
	[itemId] [nvarchar](24) NULL,
	[qtyHr] [numeric](20, 6) NOT NULL,
	[qtyUnit] [numeric](20, 6) NOT NULL,
	[comment] [nvarchar](60) NOT NULL,
	[pohId] [nvarchar](12) NULL,
	[pohRev] [smallint] NULL,
	[lineNbr] [smallint] NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIMOWR_KEY_0] PRIMARY KEY CLUSTERED 
(
	[wcId] ASC,
	[entry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IDX_MIMOWR_1] ON [dbo].[MIMOWR]
(
	[itemId] ASC,
	[wcId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[MIMOWR] ADD  DEFAULT (' ') FOR [wcId]
ALTER TABLE [dbo].[MIMOWR] ADD  DEFAULT ((0)) FOR [entry]
ALTER TABLE [dbo].[MIMOWR] ADD  DEFAULT ((0)) FOR [type]
ALTER TABLE [dbo].[MIMOWR] ADD  DEFAULT ((0)) FOR [qtyHr]
ALTER TABLE [dbo].[MIMOWR] ADD  DEFAULT ((0)) FOR [qtyUnit]
ALTER TABLE [dbo].[MIMOWR] ADD  DEFAULT (' ') FOR [comment]
ALTER TABLE [dbo].[MIMOWR] ADD  DEFAULT ((0)) FOR [lineNbr]
ALTER TABLE [dbo].[MIMOWR]  WITH CHECK ADD FOREIGN KEY([itemId])
REFERENCES [dbo].[MIITEM] ([itemId])
ALTER TABLE [dbo].[MIMOWR]  WITH CHECK ADD  CONSTRAINT [FK_MIMOWR_MIMOWC] FOREIGN KEY([wcId])
REFERENCES [dbo].[MIMOWC] ([wcId])
ON DELETE CASCADE
ALTER TABLE [dbo].[MIMOWR] CHECK CONSTRAINT [FK_MIMOWR_MIMOWC]
ALTER TABLE [dbo].[MIMOWR]  WITH CHECK ADD  CONSTRAINT [FK_MIMOWR_MIPOH] FOREIGN KEY([pohId], [pohRev])
REFERENCES [dbo].[MIPOH] ([pohId], [pohRev])
ALTER TABLE [dbo].[MIMOWR] CHECK CONSTRAINT [FK_MIMOWR_MIPOH]