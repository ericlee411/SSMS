/****** Object:  Table [dbo].[MIPORCVR]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIPORCVR](
	[tranDate] [nvarchar](8) NOT NULL,
	[userId] [nvarchar](8) NOT NULL,
	[entry] [int] NOT NULL,
	[tranDt]  AS (CONVERT([datetime],[tranDate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIPORCVR_KEY_0] PRIMARY KEY CLUSTERED 
(
	[tranDate] ASC,
	[userId] ASC,
	[entry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MIPORCVR] ADD  DEFAULT (' ') FOR [userId]
ALTER TABLE [dbo].[MIPORCVR] ADD  DEFAULT ((0)) FOR [entry]
