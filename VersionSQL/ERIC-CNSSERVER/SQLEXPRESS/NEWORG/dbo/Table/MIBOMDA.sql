/****** Object:  Table [dbo].[MIBOMDA]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIBOMDA](
	[bomItem] [nvarchar](24) NOT NULL,
	[bomRev] [nvarchar](6) NOT NULL,
	[bomEntry] [int] NOT NULL,
	[uniquifier] [int] NOT NULL,
	[lineNbr] [smallint] NOT NULL,
	[partId] [nvarchar](24) NULL,
	[altPartId] [nvarchar](24) NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIBOMDA_KEY_0] PRIMARY KEY CLUSTERED 
(
	[bomItem] ASC,
	[bomRev] ASC,
	[bomEntry] ASC,
	[uniquifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MIBOMDA] ADD  DEFAULT (' ') FOR [bomItem]
ALTER TABLE [dbo].[MIBOMDA] ADD  DEFAULT ('0') FOR [bomRev]
ALTER TABLE [dbo].[MIBOMDA] ADD  DEFAULT ((0)) FOR [bomEntry]
ALTER TABLE [dbo].[MIBOMDA] ADD  DEFAULT ((0)) FOR [uniquifier]
ALTER TABLE [dbo].[MIBOMDA] ADD  DEFAULT ((0)) FOR [lineNbr]
ALTER TABLE [dbo].[MIBOMDA]  WITH CHECK ADD FOREIGN KEY([altPartId])
REFERENCES [dbo].[MIITEM] ([itemId])
ALTER TABLE [dbo].[MIBOMDA]  WITH CHECK ADD FOREIGN KEY([partId])
REFERENCES [dbo].[MIITEM] ([itemId])
ALTER TABLE [dbo].[MIBOMDA]  WITH CHECK ADD  CONSTRAINT [FK_MIBOMDA_MIBOMH] FOREIGN KEY([bomItem], [bomRev])
REFERENCES [dbo].[MIBOMH] ([bomItem], [bomRev])
ON DELETE CASCADE
ALTER TABLE [dbo].[MIBOMDA] CHECK CONSTRAINT [FK_MIBOMDA_MIBOMH]
