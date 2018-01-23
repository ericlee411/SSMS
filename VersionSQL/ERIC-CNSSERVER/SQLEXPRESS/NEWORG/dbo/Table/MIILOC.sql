/****** Object:  Table [dbo].[MIILOC]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIILOC](
	[itemId] [nvarchar](24) NOT NULL,
	[locId] [nvarchar](6) NOT NULL,
	[pick] [nvarchar](24) NOT NULL,
	[minLvl] [numeric](20, 6) NOT NULL,
	[maxLvl] [numeric](20, 6) NOT NULL,
	[ordLvl] [numeric](20, 6) NOT NULL,
	[ordQty] [numeric](20, 6) NOT NULL,
	[lstPIDate] [nvarchar](8) NULL,
	[variance] [numeric](20, 6) NOT NULL,
	[qStk] [numeric](20, 6) NOT NULL,
	[qWIP] [numeric](20, 6) NOT NULL,
	[qRes] [numeric](20, 6) NOT NULL,
	[qOrd] [numeric](20, 6) NOT NULL,
	[iqStk] [numeric](20, 6) NOT NULL,
	[iqWIP] [numeric](20, 6) NOT NULL,
	[iqRes] [numeric](20, 6) NOT NULL,
	[iqOrd] [numeric](20, 6) NOT NULL,
	[lstUseDate] [nvarchar](8) NULL,
	[fldXml] [text] NOT NULL,
	[lstPIDt]  AS (CONVERT([datetime],[lstPIDate])),
	[lstUseDt]  AS (CONVERT([datetime],[lstUseDate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIILOC_KEY_0] PRIMARY KEY CLUSTERED 
(
	[itemId] ASC,
	[locId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

SET ANSI_PADDING ON

CREATE UNIQUE NONCLUSTERED INDEX [IDX_MIILOC_1] ON [dbo].[MIILOC]
(
	[locId] ASC,
	[itemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[MIILOC] ADD  DEFAULT (' ') FOR [itemId]
ALTER TABLE [dbo].[MIILOC] ADD  DEFAULT (' ') FOR [pick]
ALTER TABLE [dbo].[MIILOC] ADD  DEFAULT ((0)) FOR [minLvl]
ALTER TABLE [dbo].[MIILOC] ADD  DEFAULT ((0)) FOR [maxLvl]
ALTER TABLE [dbo].[MIILOC] ADD  DEFAULT ((0)) FOR [ordLvl]
ALTER TABLE [dbo].[MIILOC] ADD  DEFAULT ((0)) FOR [ordQty]
ALTER TABLE [dbo].[MIILOC] ADD  DEFAULT ((0)) FOR [variance]
ALTER TABLE [dbo].[MIILOC] ADD  DEFAULT ((0)) FOR [qStk]
ALTER TABLE [dbo].[MIILOC] ADD  DEFAULT ((0)) FOR [qWIP]
ALTER TABLE [dbo].[MIILOC] ADD  DEFAULT ((0)) FOR [qRes]
ALTER TABLE [dbo].[MIILOC] ADD  DEFAULT ((0)) FOR [qOrd]
ALTER TABLE [dbo].[MIILOC] ADD  DEFAULT ((0)) FOR [iqStk]
ALTER TABLE [dbo].[MIILOC] ADD  DEFAULT ((0)) FOR [iqWIP]
ALTER TABLE [dbo].[MIILOC] ADD  DEFAULT ((0)) FOR [iqRes]
ALTER TABLE [dbo].[MIILOC] ADD  DEFAULT ((0)) FOR [iqOrd]
ALTER TABLE [dbo].[MIILOC] ADD  DEFAULT (' ') FOR [fldXml]
ALTER TABLE [dbo].[MIILOC]  WITH CHECK ADD FOREIGN KEY([locId])
REFERENCES [dbo].[MIDLOC] ([locId])
ALTER TABLE [dbo].[MIILOC]  WITH CHECK ADD  CONSTRAINT [FK_MIILOC_MIITEM] FOREIGN KEY([itemId])
REFERENCES [dbo].[MIITEM] ([itemId])
ON DELETE CASCADE
ALTER TABLE [dbo].[MIILOC] CHECK CONSTRAINT [FK_MIILOC_MIITEM]
