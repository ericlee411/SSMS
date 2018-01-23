/****** Object:  Table [dbo].[MIDLOC]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIDLOC](
	[locId] [nvarchar](6) NOT NULL,
	[locName] [nvarchar](60) NOT NULL,
	[adr1] [nvarchar](60) NOT NULL,
	[adr2] [nvarchar](60) NOT NULL,
	[adr3] [nvarchar](60) NOT NULL,
	[adr4] [nvarchar](60) NOT NULL,
	[city] [nvarchar](30) NOT NULL,
	[state] [nvarchar](30) NOT NULL,
	[zip] [nvarchar](20) NOT NULL,
	[country] [nvarchar](30) NOT NULL,
	[phone] [nvarchar](30) NOT NULL,
	[fax] [nvarchar](30) NOT NULL,
	[contact] [nvarchar](60) NOT NULL,
	[ref] [nvarchar](20) NOT NULL,
	[acctSet] [nvarchar](8) NULL,
	[glSeg] [nvarchar](15) NOT NULL,
	[icLoc] [nvarchar](256) NOT NULL,
	[binMeth] [smallint] NOT NULL,
	[exclude] [bit] NOT NULL,
	[status] [smallint] NOT NULL,
	[fldXml] [text] NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIDLOC_KEY_0] PRIMARY KEY CLUSTERED 
(
	[locId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

SET ANSI_PADDING ON

CREATE UNIQUE NONCLUSTERED INDEX [IDX_MIDLOC_1] ON [dbo].[MIDLOC]
(
	[icLoc] ASC,
	[locId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[MIDLOC] ADD  DEFAULT (' ') FOR [locId]
ALTER TABLE [dbo].[MIDLOC] ADD  DEFAULT (' ') FOR [locName]
ALTER TABLE [dbo].[MIDLOC] ADD  DEFAULT (' ') FOR [adr1]
ALTER TABLE [dbo].[MIDLOC] ADD  DEFAULT (' ') FOR [adr2]
ALTER TABLE [dbo].[MIDLOC] ADD  DEFAULT (' ') FOR [adr3]
ALTER TABLE [dbo].[MIDLOC] ADD  DEFAULT (' ') FOR [adr4]
ALTER TABLE [dbo].[MIDLOC] ADD  DEFAULT (' ') FOR [city]
ALTER TABLE [dbo].[MIDLOC] ADD  DEFAULT (' ') FOR [state]
ALTER TABLE [dbo].[MIDLOC] ADD  DEFAULT (' ') FOR [zip]
ALTER TABLE [dbo].[MIDLOC] ADD  DEFAULT (' ') FOR [country]
ALTER TABLE [dbo].[MIDLOC] ADD  DEFAULT (' ') FOR [phone]
ALTER TABLE [dbo].[MIDLOC] ADD  DEFAULT (' ') FOR [fax]
ALTER TABLE [dbo].[MIDLOC] ADD  DEFAULT (' ') FOR [contact]
ALTER TABLE [dbo].[MIDLOC] ADD  DEFAULT (' ') FOR [ref]
ALTER TABLE [dbo].[MIDLOC] ADD  DEFAULT (' ') FOR [glSeg]
ALTER TABLE [dbo].[MIDLOC] ADD  DEFAULT (' ') FOR [icLoc]
ALTER TABLE [dbo].[MIDLOC] ADD  DEFAULT ((0)) FOR [binMeth]
ALTER TABLE [dbo].[MIDLOC] ADD  DEFAULT ((0)) FOR [exclude]
ALTER TABLE [dbo].[MIDLOC] ADD  DEFAULT ((0)) FOR [status]
ALTER TABLE [dbo].[MIDLOC] ADD  DEFAULT (' ') FOR [fldXml]
ALTER TABLE [dbo].[MIDLOC]  WITH CHECK ADD FOREIGN KEY([acctSet])
REFERENCES [dbo].[MIACCT] ([setId])
