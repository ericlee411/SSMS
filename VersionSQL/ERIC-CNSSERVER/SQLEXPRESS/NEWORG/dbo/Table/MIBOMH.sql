/****** Object:  Table [dbo].[MIBOMH]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIBOMH](
	[bomItem] [nvarchar](24) NOT NULL,
	[bomRev] [nvarchar](6) NOT NULL,
	[rollup] [bit] NOT NULL,
	[mult] [numeric](20, 6) NOT NULL,
	[yield] [numeric](20, 6) NOT NULL,
	[autoBuild] [smallint] NOT NULL,
	[lstMainDt] [datetime] NULL,
	[descr] [nvarchar](2000) NOT NULL,
	[author] [nvarchar](30) NOT NULL,
	[ecoNum] [nvarchar](12) NOT NULL,
	[revDate] [nvarchar](8) NULL,
	[effStartDate] [nvarchar](8) NULL,
	[effEndDate] [nvarchar](8) NULL,
	[ovride] [bit] NOT NULL,
	[docPath] [nvarchar](260) NOT NULL,
	[assyLead] [smallint] NOT NULL,
	[revCmnt] [nvarchar](256) NOT NULL,
	[ecoDocPath] [nvarchar](260) NOT NULL,
	[qPerLead] [numeric](20, 6) NOT NULL,
	[fldXml] [text] NOT NULL,
	[revDt]  AS (CONVERT([datetime],[revDate])),
	[effStartDt]  AS (CONVERT([datetime],[effStartDate])),
	[effEndDt]  AS (CONVERT([datetime],[effEndDate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIBOMH_KEY_0] PRIMARY KEY CLUSTERED 
(
	[bomItem] ASC,
	[bomRev] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

ALTER TABLE [dbo].[MIBOMH] ADD  DEFAULT ('NEWREV') FOR [bomRev]
ALTER TABLE [dbo].[MIBOMH] ADD  DEFAULT ((1)) FOR [rollup]
ALTER TABLE [dbo].[MIBOMH] ADD  DEFAULT ((1)) FOR [mult]
ALTER TABLE [dbo].[MIBOMH] ADD  DEFAULT ((1)) FOR [yield]
ALTER TABLE [dbo].[MIBOMH] ADD  DEFAULT ((1)) FOR [autoBuild]
ALTER TABLE [dbo].[MIBOMH] ADD  DEFAULT (' ') FOR [descr]
ALTER TABLE [dbo].[MIBOMH] ADD  DEFAULT (' ') FOR [author]
ALTER TABLE [dbo].[MIBOMH] ADD  DEFAULT (' ') FOR [ecoNum]
ALTER TABLE [dbo].[MIBOMH] ADD  DEFAULT ((0)) FOR [ovride]
ALTER TABLE [dbo].[MIBOMH] ADD  DEFAULT (' ') FOR [docPath]
ALTER TABLE [dbo].[MIBOMH] ADD  DEFAULT ((0)) FOR [assyLead]
ALTER TABLE [dbo].[MIBOMH] ADD  DEFAULT (' ') FOR [revCmnt]
ALTER TABLE [dbo].[MIBOMH] ADD  DEFAULT (' ') FOR [ecoDocPath]
ALTER TABLE [dbo].[MIBOMH] ADD  DEFAULT ((0)) FOR [qPerLead]
ALTER TABLE [dbo].[MIBOMH] ADD  DEFAULT (' ') FOR [fldXml]
ALTER TABLE [dbo].[MIBOMH]  WITH CHECK ADD FOREIGN KEY([bomItem])
REFERENCES [dbo].[MIITEM] ([itemId])
