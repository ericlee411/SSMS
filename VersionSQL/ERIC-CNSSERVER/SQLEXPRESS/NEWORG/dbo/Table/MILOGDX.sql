/****** Object:  Table [dbo].[MILOGDX]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MILOGDX](
	[tranDate] [nvarchar](8) NOT NULL,
	[userId] [nvarchar](8) NOT NULL,
	[entry] [int] NOT NULL,
	[detail] [int] NOT NULL,
	[dtype] [smallint] NOT NULL,
	[type] [smallint] NOT NULL,
	[itemId] [nvarchar](24) NULL,
	[locId] [nvarchar](6) NULL,
	[recDate] [nvarchar](8) NULL,
	[recSeqNo] [int] NULL,
	[qty] [numeric](20, 6) NOT NULL,
	[reference] [nvarchar](30) NOT NULL,
	[acctId] [nvarchar](45) NULL,
	[amnt] [numeric](20, 6) NOT NULL,
	[tranDt]  AS (CONVERT([datetime],[tranDate])),
	[recDt]  AS (CONVERT([datetime],[recDate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MILOGDX_KEY_0] PRIMARY KEY CLUSTERED 
(
	[tranDate] ASC,
	[userId] ASC,
	[entry] ASC,
	[detail] ASC,
	[dtype] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MILOGDX] ADD  DEFAULT (' ') FOR [userId]
ALTER TABLE [dbo].[MILOGDX] ADD  DEFAULT ((0)) FOR [entry]
ALTER TABLE [dbo].[MILOGDX] ADD  DEFAULT ((0)) FOR [detail]
ALTER TABLE [dbo].[MILOGDX] ADD  DEFAULT ((0)) FOR [dtype]
ALTER TABLE [dbo].[MILOGDX] ADD  DEFAULT ((0)) FOR [type]
ALTER TABLE [dbo].[MILOGDX] ADD  DEFAULT ((0)) FOR [qty]
ALTER TABLE [dbo].[MILOGDX] ADD  DEFAULT (' ') FOR [reference]
ALTER TABLE [dbo].[MILOGDX] ADD  DEFAULT ((0)) FOR [amnt]
