/****** Object:  Table [dbo].[MILICENSE]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MILICENSE](
	[entry] [int] NOT NULL,
	[type] [int] NOT NULL,
	[key] [nvarchar](128) NOT NULL,
	[orgId] [nvarchar](12) NULL,
	[expireDate] [datetime] NULL,
	[count] [int] NOT NULL,
	[assignable] [bit] NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MILICENSE_KEY_0] PRIMARY KEY CLUSTERED 
(
	[entry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MILICENSE] ADD  DEFAULT ((0)) FOR [entry]
ALTER TABLE [dbo].[MILICENSE] ADD  DEFAULT ((0)) FOR [type]
ALTER TABLE [dbo].[MILICENSE] ADD  DEFAULT (' ') FOR [key]
ALTER TABLE [dbo].[MILICENSE] ADD  DEFAULT ((0)) FOR [count]
ALTER TABLE [dbo].[MILICENSE] ADD  DEFAULT ((0)) FOR [assignable]
