/****** Object:  Table [dbo].[MISHOPWK]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MISHOPWK](
	[userId] [nvarchar](8) NOT NULL,
	[uniq] [int] NOT NULL,
	[dispatchISODt] [nvarchar](23) NOT NULL,
	[wohId] [nvarchar](15) NULL,
	[wodId] [int] NOT NULL,
	[mohId] [nvarchar](15) NULL,
	[lineNbr] [smallint] NOT NULL,
	[wcId] [nvarchar](24) NULL,
	[opCode] [nvarchar](24) NULL,
	[itemId] [nvarchar](24) NULL,
	[bomItem] [nvarchar](24) NULL,
	[bomRev] [nvarchar](6) NULL,
	[jobId] [nvarchar](12) NULL,
	[qty] [numeric](20, 6) NOT NULL,
	[availTime] [numeric](20, 6) NOT NULL,
	[optTime] [numeric](20, 6) NOT NULL,
	[runTime] [numeric](20, 6) NOT NULL,
	[setupTime] [numeric](20, 6) NOT NULL,
	[queueTime] [numeric](20, 6) NOT NULL,
	[waitTime] [numeric](20, 6) NOT NULL,
	[endTime] [numeric](20, 6) NOT NULL,
	[openTime] [numeric](20, 6) NOT NULL,
	[status] [smallint] NOT NULL,
	[perLoad] [numeric](20, 6) NOT NULL,
	[dispatchDt]  AS (CONVERT([datetime],[dispatchISODt])),
 CONSTRAINT [PK_MISHOPWK_KEY_0] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[uniq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MISHOPWK] ADD  DEFAULT (' ') FOR [userId]
ALTER TABLE [dbo].[MISHOPWK] ADD  DEFAULT ((0)) FOR [uniq]
ALTER TABLE [dbo].[MISHOPWK] ADD  DEFAULT ((0)) FOR [wodId]
ALTER TABLE [dbo].[MISHOPWK] ADD  DEFAULT (' ') FOR [mohId]
ALTER TABLE [dbo].[MISHOPWK] ADD  DEFAULT ((0)) FOR [lineNbr]
ALTER TABLE [dbo].[MISHOPWK] ADD  DEFAULT (' ') FOR [wcId]
ALTER TABLE [dbo].[MISHOPWK] ADD  DEFAULT (' ') FOR [opCode]
ALTER TABLE [dbo].[MISHOPWK] ADD  DEFAULT (' ') FOR [itemId]
ALTER TABLE [dbo].[MISHOPWK] ADD  DEFAULT (' ') FOR [bomItem]
ALTER TABLE [dbo].[MISHOPWK] ADD  DEFAULT (' ') FOR [bomRev]
ALTER TABLE [dbo].[MISHOPWK] ADD  DEFAULT ((0)) FOR [qty]
ALTER TABLE [dbo].[MISHOPWK] ADD  DEFAULT ((0)) FOR [availTime]
ALTER TABLE [dbo].[MISHOPWK] ADD  DEFAULT ((0)) FOR [optTime]
ALTER TABLE [dbo].[MISHOPWK] ADD  DEFAULT ((0)) FOR [runTime]
ALTER TABLE [dbo].[MISHOPWK] ADD  DEFAULT ((0)) FOR [setupTime]
ALTER TABLE [dbo].[MISHOPWK] ADD  DEFAULT ((0)) FOR [queueTime]
ALTER TABLE [dbo].[MISHOPWK] ADD  DEFAULT ((0)) FOR [waitTime]
ALTER TABLE [dbo].[MISHOPWK] ADD  DEFAULT ((0)) FOR [endTime]
ALTER TABLE [dbo].[MISHOPWK] ADD  DEFAULT ((0)) FOR [openTime]
ALTER TABLE [dbo].[MISHOPWK] ADD  DEFAULT ((0)) FOR [status]
ALTER TABLE [dbo].[MISHOPWK] ADD  DEFAULT ((0)) FOR [perLoad]
