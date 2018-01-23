/****** Object:  Table [dbo].[MIADJD]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIADJD](
	[userId] [nvarchar](8) NOT NULL,
	[itemId] [nvarchar](24) NOT NULL,
	[stdCst] [numeric](20, 6) NOT NULL,
	[avgCst] [numeric](20, 6) NOT NULL,
	[recCst] [numeric](20, 6) NOT NULL,
	[mult] [numeric](20, 6) NOT NULL,
	[laborSw] [bit] NOT NULL,
	[ovrhdSw] [bit] NOT NULL,
	[status] [smallint] NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIADJD_KEY_0] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[itemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MIADJD] ADD  DEFAULT ((0)) FOR [stdCst]
ALTER TABLE [dbo].[MIADJD] ADD  DEFAULT ((0)) FOR [avgCst]
ALTER TABLE [dbo].[MIADJD] ADD  DEFAULT ((0)) FOR [recCst]
ALTER TABLE [dbo].[MIADJD] ADD  DEFAULT ((0)) FOR [mult]
ALTER TABLE [dbo].[MIADJD] ADD  DEFAULT ((0)) FOR [laborSw]
ALTER TABLE [dbo].[MIADJD] ADD  DEFAULT ((0)) FOR [ovrhdSw]
ALTER TABLE [dbo].[MIADJD] ADD  DEFAULT ((0)) FOR [status]
ALTER TABLE [dbo].[MIADJD]  WITH CHECK ADD FOREIGN KEY([itemId])
REFERENCES [dbo].[MIITEM] ([itemId])
ALTER TABLE [dbo].[MIADJD]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[MIUSER] ([userId])
ALTER TABLE [dbo].[MIADJD]  WITH CHECK ADD  CONSTRAINT [FK_MIADJD_MIADJH] FOREIGN KEY([userId])
REFERENCES [dbo].[MIADJH] ([userId])
ON DELETE CASCADE
ALTER TABLE [dbo].[MIADJD] CHECK CONSTRAINT [FK_MIADJD_MIADJH]
