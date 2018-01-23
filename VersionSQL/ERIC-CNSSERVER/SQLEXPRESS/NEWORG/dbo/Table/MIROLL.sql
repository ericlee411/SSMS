/****** Object:  Table [dbo].[MIROLL]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIROLL](
	[userId] [nvarchar](8) NOT NULL,
	[entry] [int] NOT NULL,
	[itemId] [nvarchar](24) NULL,
	[oldStd] [numeric](20, 6) NOT NULL,
	[newStd] [numeric](20, 6) NOT NULL,
	[oldAvg] [numeric](20, 6) NOT NULL,
	[newAvg] [numeric](20, 6) NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIROLL_KEY_0] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[entry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MIROLL] ADD  DEFAULT (' ') FOR [userId]
ALTER TABLE [dbo].[MIROLL] ADD  DEFAULT ((0)) FOR [entry]
ALTER TABLE [dbo].[MIROLL] ADD  DEFAULT ((0)) FOR [oldStd]
ALTER TABLE [dbo].[MIROLL] ADD  DEFAULT ((0)) FOR [newStd]
ALTER TABLE [dbo].[MIROLL] ADD  DEFAULT ((0)) FOR [oldAvg]
ALTER TABLE [dbo].[MIROLL] ADD  DEFAULT ((0)) FOR [newAvg]
ALTER TABLE [dbo].[MIROLL]  WITH CHECK ADD FOREIGN KEY([itemId])
REFERENCES [dbo].[MIITEM] ([itemId])
