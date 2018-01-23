/****** Object:  Table [dbo].[MISLBINQ]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MISLBINQ](
	[locId] [nvarchar](6) NOT NULL,
	[binId] [nvarchar](24) NOT NULL,
	[lotId] [nvarchar](40) NOT NULL,
	[itemId] [nvarchar](24) NULL,
	[qStk] [numeric](20, 6) NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MISLBINQ_KEY_0] PRIMARY KEY CLUSTERED 
(
	[locId] ASC,
	[binId] ASC,
	[lotId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MISLBINQ] ADD  DEFAULT (' ') FOR [locId]
ALTER TABLE [dbo].[MISLBINQ] ADD  DEFAULT (' ') FOR [binId]
ALTER TABLE [dbo].[MISLBINQ] ADD  DEFAULT (' ') FOR [lotId]
ALTER TABLE [dbo].[MISLBINQ] ADD  DEFAULT ((0)) FOR [qStk]
ALTER TABLE [dbo].[MISLBINQ]  WITH CHECK ADD FOREIGN KEY([itemId])
REFERENCES [dbo].[MIITEM] ([itemId])
