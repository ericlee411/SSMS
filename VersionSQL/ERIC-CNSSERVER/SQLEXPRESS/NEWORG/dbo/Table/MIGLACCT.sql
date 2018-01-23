/****** Object:  Table [dbo].[MIGLACCT]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIGLACCT](
	[acctId] [nvarchar](45) NOT NULL,
	[name] [nvarchar](60) NOT NULL,
	[type] [smallint] NOT NULL,
	[status] [smallint] NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIGLACCT_KEY_0] PRIMARY KEY CLUSTERED 
(
	[acctId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MIGLACCT] ADD  DEFAULT (' ') FOR [acctId]
ALTER TABLE [dbo].[MIGLACCT] ADD  DEFAULT (' ') FOR [name]
ALTER TABLE [dbo].[MIGLACCT] ADD  DEFAULT ((0)) FOR [type]
ALTER TABLE [dbo].[MIGLACCT] ADD  DEFAULT ((0)) FOR [status]
