/****** Object:  Table [dbo].[MIORDRI]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIORDRI](
	[userId] [nvarchar](8) NOT NULL,
	[poId] [nvarchar](12) NULL,
	[moId] [nvarchar](15) NULL,
	[woId] [nvarchar](12) NULL,
	[nbthId] [nvarchar](6) NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIORDRI_KEY_0] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MIORDRI] ADD  DEFAULT (' ') FOR [userId]
