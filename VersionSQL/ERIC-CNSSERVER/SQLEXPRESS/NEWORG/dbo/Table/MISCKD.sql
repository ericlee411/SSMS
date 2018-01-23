/****** Object:  Table [dbo].[MISCKD]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MISCKD](
	[userId] [nvarchar](8) NOT NULL,
	[itemId] [nvarchar](24) NOT NULL,
	[locId] [nvarchar](6) NOT NULL,
	[descr] [nvarchar](60) NOT NULL,
	[type] [smallint] NOT NULL,
	[status] [smallint] NOT NULL,
	[iqStk] [numeric](20, 6) NOT NULL,
	[iqWip] [numeric](20, 6) NOT NULL,
	[iqRes] [numeric](20, 6) NOT NULL,
	[iqOrd] [numeric](20, 6) NOT NULL,
	[fqStk] [numeric](20, 6) NOT NULL,
	[fqWip] [numeric](20, 6) NOT NULL,
	[fqRes] [numeric](20, 6) NOT NULL,
	[fqOrd] [numeric](20, 6) NOT NULL,
	[iqAvl] [numeric](20, 6) NOT NULL,
	[fqAvl] [numeric](20, 6) NOT NULL,
	[variance] [numeric](20, 6) NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MISCKD_KEY_0] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[itemId] ASC,
	[locId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IDX_MISCKD_1] ON [dbo].[MISCKD]
(
	[userId] ASC,
	[locId] ASC,
	[itemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[MISCKD] ADD  DEFAULT (' ') FOR [locId]
ALTER TABLE [dbo].[MISCKD] ADD  DEFAULT (' ') FOR [descr]
ALTER TABLE [dbo].[MISCKD] ADD  DEFAULT ((0)) FOR [type]
ALTER TABLE [dbo].[MISCKD] ADD  DEFAULT ((0)) FOR [status]
ALTER TABLE [dbo].[MISCKD] ADD  DEFAULT ((0)) FOR [iqStk]
ALTER TABLE [dbo].[MISCKD] ADD  DEFAULT ((0)) FOR [iqWip]
ALTER TABLE [dbo].[MISCKD] ADD  DEFAULT ((0)) FOR [iqRes]
ALTER TABLE [dbo].[MISCKD] ADD  DEFAULT ((0)) FOR [iqOrd]
ALTER TABLE [dbo].[MISCKD] ADD  DEFAULT ((0)) FOR [fqStk]
ALTER TABLE [dbo].[MISCKD] ADD  DEFAULT ((0)) FOR [fqWip]
ALTER TABLE [dbo].[MISCKD] ADD  DEFAULT ((0)) FOR [fqRes]
ALTER TABLE [dbo].[MISCKD] ADD  DEFAULT ((0)) FOR [fqOrd]
ALTER TABLE [dbo].[MISCKD] ADD  DEFAULT ((0)) FOR [iqAvl]
ALTER TABLE [dbo].[MISCKD] ADD  DEFAULT ((0)) FOR [fqAvl]
ALTER TABLE [dbo].[MISCKD] ADD  DEFAULT ((0)) FOR [variance]
ALTER TABLE [dbo].[MISCKD]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[MIUSER] ([userId])
ALTER TABLE [dbo].[MISCKD]  WITH CHECK ADD  CONSTRAINT [FK_MISCKD_MISCKH] FOREIGN KEY([userId], [itemId])
REFERENCES [dbo].[MISCKH] ([userId], [itemId])
ON DELETE CASCADE
ALTER TABLE [dbo].[MISCKD] CHECK CONSTRAINT [FK_MISCKD_MISCKH]
