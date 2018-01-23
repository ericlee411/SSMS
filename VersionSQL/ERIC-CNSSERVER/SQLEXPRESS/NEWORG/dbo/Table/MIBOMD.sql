/****** Object:  Table [dbo].[MIBOMD]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIBOMD](
	[bomItem] [nvarchar](24) NOT NULL,
	[bomRev] [nvarchar](6) NOT NULL,
	[bomEntry] [int] NOT NULL,
	[lineNbr] [smallint] NOT NULL,
	[dType] [smallint] NOT NULL,
	[partId] [nvarchar](24) NULL,
	[revId] [nvarchar](6) NULL,
	[qty] [numeric](20, 6) NOT NULL,
	[lead] [smallint] NOT NULL,
	[cmnt] [nvarchar](60) NOT NULL,
	[opCode] [nvarchar](24) NULL,
	[fldXml] [text] NOT NULL,
	[srcLoc] [nvarchar](6) NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIBOMD_KEY_0] PRIMARY KEY CLUSTERED 
(
	[bomItem] ASC,
	[bomRev] ASC,
	[bomEntry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IDX_MIBOMD_1] ON [dbo].[MIBOMD]
(
	[partId] ASC,
	[bomItem] ASC,
	[bomRev] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[MIBOMD] ADD  DEFAULT (' ') FOR [bomItem]
ALTER TABLE [dbo].[MIBOMD] ADD  DEFAULT ('0') FOR [bomRev]
ALTER TABLE [dbo].[MIBOMD] ADD  DEFAULT ((0)) FOR [bomEntry]
ALTER TABLE [dbo].[MIBOMD] ADD  DEFAULT ((0)) FOR [lineNbr]
ALTER TABLE [dbo].[MIBOMD] ADD  DEFAULT ((0)) FOR [dType]
ALTER TABLE [dbo].[MIBOMD] ADD  DEFAULT ((0)) FOR [qty]
ALTER TABLE [dbo].[MIBOMD] ADD  DEFAULT ((0)) FOR [lead]
ALTER TABLE [dbo].[MIBOMD] ADD  DEFAULT (' ') FOR [cmnt]
ALTER TABLE [dbo].[MIBOMD] ADD  DEFAULT (' ') FOR [fldXml]
ALTER TABLE [dbo].[MIBOMD]  WITH CHECK ADD FOREIGN KEY([partId])
REFERENCES [dbo].[MIITEM] ([itemId])
ALTER TABLE [dbo].[MIBOMD]  WITH CHECK ADD FOREIGN KEY([srcLoc])
REFERENCES [dbo].[MIDLOC] ([locId])
ALTER TABLE [dbo].[MIBOMD]  WITH CHECK ADD  CONSTRAINT [FK_MIBOMD_MIBOMH] FOREIGN KEY([bomItem], [bomRev])
REFERENCES [dbo].[MIBOMH] ([bomItem], [bomRev])
ON DELETE CASCADE
ALTER TABLE [dbo].[MIBOMD] CHECK CONSTRAINT [FK_MIBOMD_MIBOMH]
