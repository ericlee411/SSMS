/****** Object:  Table [dbo].[MISHOPD]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MISHOPD](
	[userId] [nvarchar](8) NOT NULL,
	[batchId] [nvarchar](6) NOT NULL,
	[entry] [int] NOT NULL,
	[lineNbr] [smallint] NOT NULL,
	[tranDate] [nvarchar](8) NULL,
	[wohId] [nvarchar](12) NULL,
	[wodId] [int] NOT NULL,
	[wodLn] [smallint] NOT NULL,
	[mohId] [nvarchar](15) NULL,
	[opCode] [nvarchar](24) NULL,
	[type] [smallint] NOT NULL,
	[itemId] [nvarchar](24) NULL,
	[qty] [numeric](20, 6) NOT NULL,
	[runTime] [numeric](20, 6) NOT NULL,
	[ovride] [smallint] NOT NULL,
	[comment] [nvarchar](60) NOT NULL,
	[status] [smallint] NOT NULL,
	[rdLineNbr] [smallint] NOT NULL,
	[pohId] [nvarchar](12) NULL,
	[pohRev] [smallint] NOT NULL,
	[tranDt]  AS (CONVERT([datetime],[tranDate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MISHOPD_KEY_0] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[batchId] ASC,
	[entry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MISHOPD] ADD  DEFAULT (' ') FOR [userId]
ALTER TABLE [dbo].[MISHOPD] ADD  DEFAULT (' ') FOR [batchId]
ALTER TABLE [dbo].[MISHOPD] ADD  DEFAULT ((0)) FOR [entry]
ALTER TABLE [dbo].[MISHOPD] ADD  DEFAULT ((0)) FOR [lineNbr]
ALTER TABLE [dbo].[MISHOPD] ADD  DEFAULT ((-1)) FOR [wodId]
ALTER TABLE [dbo].[MISHOPD] ADD  DEFAULT ((0)) FOR [wodLn]
ALTER TABLE [dbo].[MISHOPD] ADD  DEFAULT ((0)) FOR [type]
ALTER TABLE [dbo].[MISHOPD] ADD  DEFAULT (' ') FOR [itemId]
ALTER TABLE [dbo].[MISHOPD] ADD  DEFAULT ((0)) FOR [qty]
ALTER TABLE [dbo].[MISHOPD] ADD  DEFAULT ((0)) FOR [runTime]
ALTER TABLE [dbo].[MISHOPD] ADD  DEFAULT ((0)) FOR [ovride]
ALTER TABLE [dbo].[MISHOPD] ADD  DEFAULT (' ') FOR [comment]
ALTER TABLE [dbo].[MISHOPD] ADD  DEFAULT ((0)) FOR [status]
ALTER TABLE [dbo].[MISHOPD] ADD  DEFAULT ((0)) FOR [rdLineNbr]
ALTER TABLE [dbo].[MISHOPD] ADD  DEFAULT ((0)) FOR [pohRev]
ALTER TABLE [dbo].[MISHOPD]  WITH CHECK ADD FOREIGN KEY([mohId])
REFERENCES [dbo].[MIMOH] ([mohId])
ALTER TABLE [dbo].[MISHOPD]  WITH CHECK ADD FOREIGN KEY([wohId])
REFERENCES [dbo].[MIWOH] ([wohId])
ALTER TABLE [dbo].[MISHOPD]  WITH CHECK ADD  CONSTRAINT [FK_MISHOPD_MISHOPH] FOREIGN KEY([userId], [batchId])
REFERENCES [dbo].[MISHOPH] ([userId], [batchId])
ON DELETE CASCADE
ALTER TABLE [dbo].[MISHOPD] CHECK CONSTRAINT [FK_MISHOPD_MISHOPH]
