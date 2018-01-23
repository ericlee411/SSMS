/****** Object:  Table [dbo].[MIUSER]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIUSER](
	[userId] [nvarchar](8) NOT NULL,
	[userName] [nvarchar](60) NOT NULL,
	[userPwd] [nvarchar](256) NOT NULL,
	[config] [text] NOT NULL,
	[domainName] [nvarchar](260) NOT NULL,
	[acctType] [int] NOT NULL,
	[acctStatus] [int] NOT NULL,
	[groupId] [nvarchar](8) NULL,
	[uiProfileId] [nvarchar](8) NOT NULL,
	[lang] [nvarchar](3) NULL,
	[licenseId] [nvarchar](12) NOT NULL,
	[logFlg] [bit] NOT NULL,
	[SFQSerialNum] [nvarchar](128) NULL,
	[machineId] [nvarchar](128) NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIUSER_KEY_0] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IDX_MIUSER_1] ON [dbo].[MIUSER]
(
	[groupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[MIUSER] ADD  DEFAULT (' ') FOR [userId]
ALTER TABLE [dbo].[MIUSER] ADD  DEFAULT (' ') FOR [userName]
ALTER TABLE [dbo].[MIUSER] ADD  DEFAULT (' ') FOR [userPwd]
ALTER TABLE [dbo].[MIUSER] ADD  DEFAULT (' ') FOR [config]
ALTER TABLE [dbo].[MIUSER] ADD  DEFAULT (' ') FOR [domainName]
ALTER TABLE [dbo].[MIUSER] ADD  DEFAULT ((0)) FOR [acctType]
ALTER TABLE [dbo].[MIUSER] ADD  DEFAULT ((0)) FOR [acctStatus]
ALTER TABLE [dbo].[MIUSER] ADD  DEFAULT (' ') FOR [uiProfileId]
ALTER TABLE [dbo].[MIUSER] ADD  DEFAULT (' ') FOR [licenseId]
ALTER TABLE [dbo].[MIUSER] ADD  DEFAULT ((1)) FOR [logFlg]
ALTER TABLE [dbo].[MIUSER]  WITH CHECK ADD FOREIGN KEY([groupId])
REFERENCES [dbo].[MIGROUP] ([groupId])
