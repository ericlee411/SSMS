/****** Object:  Table [dbo].[MIFLDS]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIFLDS](
	[tblLoc] [smallint] NOT NULL,
	[fldId] [int] NOT NULL,
	[type] [smallint] NOT NULL,
	[label] [nvarchar](30) NOT NULL,
	[pList] [text] NOT NULL,
	[decimal] [smallint] NOT NULL,
	[mask] [nvarchar](40) NOT NULL,
	[dflt] [text] NOT NULL,
	[dispOrd] [int] NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIFLDS_KEY_0] PRIMARY KEY CLUSTERED 
(
	[tblLoc] ASC,
	[fldId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

ALTER TABLE [dbo].[MIFLDS] ADD  DEFAULT ((0)) FOR [tblLoc]
ALTER TABLE [dbo].[MIFLDS] ADD  DEFAULT ((0)) FOR [fldId]
ALTER TABLE [dbo].[MIFLDS] ADD  DEFAULT ((0)) FOR [type]
ALTER TABLE [dbo].[MIFLDS] ADD  DEFAULT (' ') FOR [label]
ALTER TABLE [dbo].[MIFLDS] ADD  DEFAULT (' ') FOR [pList]
ALTER TABLE [dbo].[MIFLDS] ADD  DEFAULT ((0)) FOR [decimal]
ALTER TABLE [dbo].[MIFLDS] ADD  DEFAULT ('>CCCCCCCCCCCCCCCCCCCCCCCCCCCCC') FOR [mask]
ALTER TABLE [dbo].[MIFLDS] ADD  DEFAULT (' ') FOR [dflt]
ALTER TABLE [dbo].[MIFLDS] ADD  DEFAULT ((0)) FOR [dispOrd]
