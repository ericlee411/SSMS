/****** Object:  Table [dbo].[MIDLOCA]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIDLOCA](
	[locId] [nvarchar](6) NOT NULL,
	[entry] [int] NOT NULL,
	[lineNbr] [smallint] NOT NULL,
	[altLocId] [nvarchar](6) NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIDLOCA_KEY_0] PRIMARY KEY CLUSTERED 
(
	[locId] ASC,
	[entry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MIDLOCA] ADD  DEFAULT (' ') FOR [locId]
ALTER TABLE [dbo].[MIDLOCA] ADD  DEFAULT ((0)) FOR [entry]
ALTER TABLE [dbo].[MIDLOCA] ADD  DEFAULT ((0)) FOR [lineNbr]
ALTER TABLE [dbo].[MIDLOCA]  WITH CHECK ADD FOREIGN KEY([altLocId])
REFERENCES [dbo].[MIDLOC] ([locId])
ALTER TABLE [dbo].[MIDLOCA]  WITH CHECK ADD  CONSTRAINT [FK_MIDLOCA_MIDLOC] FOREIGN KEY([locId])
REFERENCES [dbo].[MIDLOC] ([locId])
ON DELETE CASCADE
ALTER TABLE [dbo].[MIDLOCA] CHECK CONSTRAINT [FK_MIDLOCA_MIDLOC]
