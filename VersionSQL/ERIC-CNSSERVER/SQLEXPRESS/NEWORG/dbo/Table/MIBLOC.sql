/****** Object:  Table [dbo].[MIBLOC]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIBLOC](
	[bomItem] [nvarchar](24) NOT NULL,
	[bomRev] [nvarchar](6) NOT NULL,
	[locId] [nvarchar](6) NOT NULL,
	[qWip] [numeric](20, 6) NOT NULL,
	[qRes] [numeric](20, 6) NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIBLOC_KEY_0] PRIMARY KEY CLUSTERED 
(
	[bomItem] ASC,
	[bomRev] ASC,
	[locId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IDX_MIBLOC_1] ON [dbo].[MIBLOC]
(
	[locId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[MIBLOC] ADD  DEFAULT (' ') FOR [bomItem]
ALTER TABLE [dbo].[MIBLOC] ADD  DEFAULT ('0') FOR [bomRev]
ALTER TABLE [dbo].[MIBLOC] ADD  DEFAULT ((0)) FOR [qWip]
ALTER TABLE [dbo].[MIBLOC] ADD  DEFAULT ((0)) FOR [qRes]
ALTER TABLE [dbo].[MIBLOC]  WITH CHECK ADD FOREIGN KEY([locId])
REFERENCES [dbo].[MIDLOC] ([locId])
ALTER TABLE [dbo].[MIBLOC]  WITH CHECK ADD  CONSTRAINT [FK_MIBLOC_MIBOMH] FOREIGN KEY([bomItem], [bomRev])
REFERENCES [dbo].[MIBOMH] ([bomItem], [bomRev])
ON DELETE CASCADE
ALTER TABLE [dbo].[MIBLOC] CHECK CONSTRAINT [FK_MIBLOC_MIBOMH]
