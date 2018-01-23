/****** Object:  Table [dbo].[MILOGD]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MILOGD](
	[tranDate] [nvarchar](8) NOT NULL,
	[userId] [nvarchar](8) NOT NULL,
	[entry] [int] NOT NULL,
	[detail] [int] NOT NULL,
	[type] [smallint] NOT NULL,
	[itemId] [nvarchar](24) NULL,
	[locId] [nvarchar](6) NULL,
	[recDate] [nvarchar](8) NULL,
	[recSeqNo] [int] NULL,
	[qty] [numeric](20, 6) NOT NULL,
	[reference] [nvarchar](30) NOT NULL,
	[crAcctId] [nvarchar](45) NULL,
	[crAmnt] [numeric](20, 6) NOT NULL,
	[drAcctId] [nvarchar](45) NULL,
	[drAmnt] [numeric](20, 6) NOT NULL,
	[adjAcctId] [nvarchar](45) NULL,
	[xvarBillId] [nvarchar](256) NULL,
	[tranDt]  AS (CONVERT([datetime],[tranDate])),
	[recDt]  AS (CONVERT([datetime],[recDate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MILOGD_KEY_0] PRIMARY KEY CLUSTERED 
(
	[tranDate] ASC,
	[userId] ASC,
	[entry] ASC,
	[detail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IDX_MILOGD_1] ON [dbo].[MILOGD]
(
	[itemId] ASC,
	[tranDate] ASC,
	[userId] ASC,
	[entry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[MILOGD] ADD  DEFAULT (' ') FOR [userId]
ALTER TABLE [dbo].[MILOGD] ADD  DEFAULT ((0)) FOR [entry]
ALTER TABLE [dbo].[MILOGD] ADD  DEFAULT ((0)) FOR [detail]
ALTER TABLE [dbo].[MILOGD] ADD  DEFAULT ((0)) FOR [type]
ALTER TABLE [dbo].[MILOGD] ADD  DEFAULT ((0)) FOR [qty]
ALTER TABLE [dbo].[MILOGD] ADD  DEFAULT (' ') FOR [reference]
ALTER TABLE [dbo].[MILOGD] ADD  DEFAULT ((0)) FOR [crAmnt]
ALTER TABLE [dbo].[MILOGD] ADD  DEFAULT ((0)) FOR [drAmnt]
ALTER TABLE [dbo].[MILOGD]  WITH CHECK ADD  CONSTRAINT [FK_MILOGD_MILOGH] FOREIGN KEY([tranDate], [userId], [entry])
REFERENCES [dbo].[MILOGH] ([tranDate], [userId], [entry])
ON DELETE CASCADE
ALTER TABLE [dbo].[MILOGD] CHECK CONSTRAINT [FK_MILOGD_MILOGH]
