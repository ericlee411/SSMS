/****** Object:  Table [dbo].[MIPOHX]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIPOHX](
	[pohId] [nvarchar](12) NOT NULL,
	[pohRev] [smallint] NOT NULL,
	[shpTo1] [nvarchar](60) NOT NULL,
	[shpTo2] [nvarchar](60) NOT NULL,
	[shpTo3] [nvarchar](60) NOT NULL,
	[shpTo4] [nvarchar](60) NOT NULL,
	[city] [nvarchar](30) NOT NULL,
	[state] [nvarchar](30) NOT NULL,
	[country] [nvarchar](30) NOT NULL,
	[zip] [nvarchar](20) NOT NULL,
	[hdrTxt1] [nvarchar](30) NOT NULL,
	[hdrTxt2] [nvarchar](30) NOT NULL,
	[hdrTxt3] [nvarchar](30) NOT NULL,
	[hdrTxt4] [nvarchar](30) NOT NULL,
	[billShpTo1] [nvarchar](60) NOT NULL,
	[billShpTo2] [nvarchar](60) NOT NULL,
	[billShpTo3] [nvarchar](60) NOT NULL,
	[billShpTo4] [nvarchar](60) NOT NULL,
	[billCty] [nvarchar](30) NOT NULL,
	[billSt] [nvarchar](30) NOT NULL,
	[billCntry] [nvarchar](30) NOT NULL,
	[billZip] [nvarchar](20) NOT NULL,
	[docPath] [nvarchar](256) NOT NULL,
	[notes] [nvarchar](2000) NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIPOHX_KEY_0] PRIMARY KEY CLUSTERED 
(
	[pohId] ASC,
	[pohRev] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MIPOHX] ADD  DEFAULT (' ') FOR [pohId]
ALTER TABLE [dbo].[MIPOHX] ADD  DEFAULT ((0)) FOR [pohRev]
ALTER TABLE [dbo].[MIPOHX] ADD  DEFAULT (' ') FOR [shpTo1]
ALTER TABLE [dbo].[MIPOHX] ADD  DEFAULT (' ') FOR [shpTo2]
ALTER TABLE [dbo].[MIPOHX] ADD  DEFAULT (' ') FOR [shpTo3]
ALTER TABLE [dbo].[MIPOHX] ADD  DEFAULT (' ') FOR [shpTo4]
ALTER TABLE [dbo].[MIPOHX] ADD  DEFAULT (' ') FOR [city]
ALTER TABLE [dbo].[MIPOHX] ADD  DEFAULT (' ') FOR [state]
ALTER TABLE [dbo].[MIPOHX] ADD  DEFAULT (' ') FOR [country]
ALTER TABLE [dbo].[MIPOHX] ADD  DEFAULT (' ') FOR [zip]
ALTER TABLE [dbo].[MIPOHX] ADD  DEFAULT (' ') FOR [hdrTxt1]
ALTER TABLE [dbo].[MIPOHX] ADD  DEFAULT (' ') FOR [hdrTxt2]
ALTER TABLE [dbo].[MIPOHX] ADD  DEFAULT (' ') FOR [hdrTxt3]
ALTER TABLE [dbo].[MIPOHX] ADD  DEFAULT (' ') FOR [hdrTxt4]
ALTER TABLE [dbo].[MIPOHX] ADD  DEFAULT (' ') FOR [billShpTo1]
ALTER TABLE [dbo].[MIPOHX] ADD  DEFAULT (' ') FOR [billShpTo2]
ALTER TABLE [dbo].[MIPOHX] ADD  DEFAULT (' ') FOR [billShpTo3]
ALTER TABLE [dbo].[MIPOHX] ADD  DEFAULT (' ') FOR [billShpTo4]
ALTER TABLE [dbo].[MIPOHX] ADD  DEFAULT (' ') FOR [billCty]
ALTER TABLE [dbo].[MIPOHX] ADD  DEFAULT (' ') FOR [billSt]
ALTER TABLE [dbo].[MIPOHX] ADD  DEFAULT (' ') FOR [billCntry]
ALTER TABLE [dbo].[MIPOHX] ADD  DEFAULT (' ') FOR [billZip]
ALTER TABLE [dbo].[MIPOHX] ADD  DEFAULT (' ') FOR [docPath]
ALTER TABLE [dbo].[MIPOHX] ADD  DEFAULT (' ') FOR [notes]
ALTER TABLE [dbo].[MIPOHX]  WITH CHECK ADD  CONSTRAINT [FK_MIPOHX_MIPOH] FOREIGN KEY([pohId], [pohRev])
REFERENCES [dbo].[MIPOH] ([pohId], [pohRev])
ON DELETE CASCADE
ALTER TABLE [dbo].[MIPOHX] CHECK CONSTRAINT [FK_MIPOHX_MIPOH]
