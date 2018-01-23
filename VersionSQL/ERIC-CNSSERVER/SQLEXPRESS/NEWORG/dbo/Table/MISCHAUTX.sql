/****** Object:  Table [dbo].[MISCHAUTX]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MISCHAUTX](
	[schNum] [int] NOT NULL,
	[schLine] [int] NOT NULL,
	[uniqueId] [int] NOT NULL,
	[schId] [nvarchar](6) NULL,
	[itemId] [nvarchar](24) NOT NULL,
	[locId] [nvarchar](6) NOT NULL,
	[dateISO] [nvarchar](8) NULL,
	[actISODate] [nvarchar](8) NULL,
	[qnt] [numeric](20, 6) NOT NULL,
	[stock] [numeric](20, 6) NOT NULL,
	[type] [smallint] NOT NULL,
	[revId] [nvarchar](6) NULL,
	[levId] [smallint] NOT NULL,
	[whenId] [smallint] NOT NULL,
	[topType] [smallint] NOT NULL,
	[topItem] [nvarchar](24) NULL,
	[topRevId] [nvarchar](6) NULL,
	[topQnt] [numeric](20, 6) NOT NULL,
	[topISODate] [nvarchar](8) NULL,
	[POId] [nvarchar](12) NULL,
	[WOId] [nvarchar](12) NULL,
	[MOId] [nvarchar](15) NULL,
	[SOId] [nvarchar](256) NULL,
	[Detail] [int] NOT NULL,
	[SrcLocId] [nvarchar](6) NULL,
	[topComment] [nvarchar](256) NOT NULL,
	[ProcIndex] [smallint] NOT NULL,
	[PORev] [smallint] NOT NULL,
	[opCode] [nvarchar](24) NULL,
	[customer] [nvarchar](256) NOT NULL,
	[subQnt] [numeric](20, 6) NOT NULL,
	[dateDt]  AS (CONVERT([datetime],[dateISO])),
	[actDate]  AS (CONVERT([datetime],[actISODate])),
	[topDate]  AS (CONVERT([datetime],[topISODate])),
 CONSTRAINT [PK_MISCHAUTX_KEY_0] PRIMARY KEY CLUSTERED 
(
	[schNum] ASC,
	[schLine] ASC,
	[uniqueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_PADDING ON

CREATE UNIQUE NONCLUSTERED INDEX [IDX_MISCHAUTX_1] ON [dbo].[MISCHAUTX]
(
	[schId] ASC,
	[itemId] ASC,
	[locId] ASC,
	[dateISO] ASC,
	[uniqueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[MISCHAUTX] ADD  DEFAULT ((0)) FOR [schNum]
ALTER TABLE [dbo].[MISCHAUTX] ADD  DEFAULT ((0)) FOR [schLine]
ALTER TABLE [dbo].[MISCHAUTX] ADD  DEFAULT ((0)) FOR [uniqueId]
ALTER TABLE [dbo].[MISCHAUTX] ADD  DEFAULT (' ') FOR [itemId]
ALTER TABLE [dbo].[MISCHAUTX] ADD  DEFAULT (' ') FOR [locId]
ALTER TABLE [dbo].[MISCHAUTX] ADD  DEFAULT ((0)) FOR [qnt]
ALTER TABLE [dbo].[MISCHAUTX] ADD  DEFAULT ((0)) FOR [stock]
ALTER TABLE [dbo].[MISCHAUTX] ADD  DEFAULT ((0)) FOR [type]
ALTER TABLE [dbo].[MISCHAUTX] ADD  DEFAULT ((0)) FOR [levId]
ALTER TABLE [dbo].[MISCHAUTX] ADD  DEFAULT ((1)) FOR [whenId]
ALTER TABLE [dbo].[MISCHAUTX] ADD  DEFAULT ((10)) FOR [topType]
ALTER TABLE [dbo].[MISCHAUTX] ADD  DEFAULT (' ') FOR [topItem]
ALTER TABLE [dbo].[MISCHAUTX] ADD  DEFAULT ((0)) FOR [topQnt]
ALTER TABLE [dbo].[MISCHAUTX] ADD  DEFAULT (' ') FOR [POId]
ALTER TABLE [dbo].[MISCHAUTX] ADD  DEFAULT (' ') FOR [WOId]
ALTER TABLE [dbo].[MISCHAUTX] ADD  DEFAULT (' ') FOR [MOId]
ALTER TABLE [dbo].[MISCHAUTX] ADD  DEFAULT (' ') FOR [SOId]
ALTER TABLE [dbo].[MISCHAUTX] ADD  DEFAULT ((0)) FOR [Detail]
ALTER TABLE [dbo].[MISCHAUTX] ADD  DEFAULT (' ') FOR [SrcLocId]
ALTER TABLE [dbo].[MISCHAUTX] ADD  DEFAULT (' ') FOR [topComment]
ALTER TABLE [dbo].[MISCHAUTX] ADD  DEFAULT ((50)) FOR [ProcIndex]
ALTER TABLE [dbo].[MISCHAUTX] ADD  DEFAULT ((0)) FOR [PORev]
ALTER TABLE [dbo].[MISCHAUTX] ADD  DEFAULT (' ') FOR [customer]
ALTER TABLE [dbo].[MISCHAUTX] ADD  DEFAULT ((0)) FOR [subQnt]
ALTER TABLE [dbo].[MISCHAUTX]  WITH CHECK ADD FOREIGN KEY([schId])
REFERENCES [dbo].[MISCHID] ([schId])
ALTER TABLE [dbo].[MISCHAUTX]  WITH CHECK ADD  CONSTRAINT [FK_MISCHAUTX_MISCHQTYX] FOREIGN KEY([schNum], [schLine])
REFERENCES [dbo].[MISCHQTYX] ([schNum], [schLine])
ON DELETE CASCADE
ALTER TABLE [dbo].[MISCHAUTX] CHECK CONSTRAINT [FK_MISCHAUTX_MISCHQTYX]
