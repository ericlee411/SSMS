/****** Object:  Table [dbo].[MIGROUP]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIGROUP](
	[groupId] [nvarchar](8) NOT NULL,
	[groupDesc] [nvarchar](60) NOT NULL,
	[permissions] [binary](32) NOT NULL,
	[shortcuts] [nvarchar](2000) NULL,
	[hiddenUI] [nvarchar](512) NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIGROUP_KEY_0] PRIMARY KEY CLUSTERED 
(
	[groupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MIGROUP] ADD  DEFAULT (' ') FOR [groupId]
ALTER TABLE [dbo].[MIGROUP] ADD  DEFAULT (' ') FOR [groupDesc]
ALTER TABLE [dbo].[MIGROUP] ADD  DEFAULT ((0)) FOR [permissions]
