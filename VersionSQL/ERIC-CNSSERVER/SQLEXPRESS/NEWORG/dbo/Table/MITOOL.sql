/****** Object:  Table [dbo].[MITOOL]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MITOOL](
	[toolId] [nvarchar](12) NOT NULL,
	[descr] [nvarchar](30) NOT NULL,
	[cycleMode] [smallint] NOT NULL,
	[cycleUsed] [numeric](20, 6) NOT NULL,
	[cycleMaint] [numeric](20, 6) NOT NULL,
	[cycleExpr] [numeric](20, 6) NOT NULL,
	[maintDueDate] [nvarchar](8) NULL,
	[exprDate] [nvarchar](8) NULL,
	[lstUseDate] [nvarchar](8) NULL,
	[recupDate] [nvarchar](8) NULL,
	[docPath] [nvarchar](260) NOT NULL,
	[itemId] [nvarchar](24) NULL,
	[fldXml] [text] NOT NULL,
	[status] [smallint] NOT NULL,
	[maintDueDt]  AS (CONVERT([datetime],[maintDueDate])),
	[exprDateDt]  AS (CONVERT([datetime],[exprDate])),
	[lstUseDt]  AS (CONVERT([datetime],[lstUseDate])),
	[recupDateDt]  AS (CONVERT([datetime],[recupDate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MITOOL_KEY_0] PRIMARY KEY CLUSTERED 
(
	[toolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

ALTER TABLE [dbo].[MITOOL] ADD  DEFAULT (' ') FOR [toolId]
ALTER TABLE [dbo].[MITOOL] ADD  DEFAULT (' ') FOR [descr]
ALTER TABLE [dbo].[MITOOL] ADD  DEFAULT ((0)) FOR [cycleMode]
ALTER TABLE [dbo].[MITOOL] ADD  DEFAULT ((0)) FOR [cycleUsed]
ALTER TABLE [dbo].[MITOOL] ADD  DEFAULT ((0)) FOR [cycleMaint]
ALTER TABLE [dbo].[MITOOL] ADD  DEFAULT ((0)) FOR [cycleExpr]
ALTER TABLE [dbo].[MITOOL] ADD  DEFAULT (' ') FOR [docPath]
ALTER TABLE [dbo].[MITOOL] ADD  DEFAULT (' ') FOR [fldXml]
ALTER TABLE [dbo].[MITOOL] ADD  DEFAULT ((0)) FOR [status]
ALTER TABLE [dbo].[MITOOL]  WITH CHECK ADD FOREIGN KEY([itemId])
REFERENCES [dbo].[MIITEM] ([itemId])
