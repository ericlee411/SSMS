/****** Object:  Table [dbo].[MIORGS]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIORGS](
	[orgId] [nvarchar](12) NOT NULL,
	[descr] [nvarchar](60) NOT NULL,
	[orgType] [smallint] NOT NULL,
	[sysOrgId] [nvarchar](6) NOT NULL,
	[driverId] [smallint] NOT NULL,
	[database] [nvarchar](260) NOT NULL,
	[secLvl] [int] NOT NULL,
	[signonId] [nvarchar](8) NOT NULL,
	[signonPw] [nvarchar](64) NOT NULL,
	[secEnabled] [int] NOT NULL,
	[status] [int] NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIORGS_KEY_0] PRIMARY KEY CLUSTERED 
(
	[orgId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MIORGS] ADD  DEFAULT (' ') FOR [orgId]
ALTER TABLE [dbo].[MIORGS] ADD  DEFAULT (' ') FOR [descr]
ALTER TABLE [dbo].[MIORGS] ADD  DEFAULT ((0)) FOR [orgType]
ALTER TABLE [dbo].[MIORGS] ADD  DEFAULT (' ') FOR [sysOrgId]
ALTER TABLE [dbo].[MIORGS] ADD  DEFAULT ((0)) FOR [driverId]
ALTER TABLE [dbo].[MIORGS] ADD  DEFAULT (' ') FOR [database]
ALTER TABLE [dbo].[MIORGS] ADD  DEFAULT ((0)) FOR [secLvl]
ALTER TABLE [dbo].[MIORGS] ADD  DEFAULT (' ') FOR [signonId]
ALTER TABLE [dbo].[MIORGS] ADD  DEFAULT (' ') FOR [signonPw]
ALTER TABLE [dbo].[MIORGS] ADD  DEFAULT ((0)) FOR [secEnabled]
ALTER TABLE [dbo].[MIORGS] ADD  DEFAULT ((0)) FOR [status]
