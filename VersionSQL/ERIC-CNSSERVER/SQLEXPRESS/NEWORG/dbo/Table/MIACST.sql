/****** Object:  Table [dbo].[MIACST]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIACST](
	[addCostId] [nvarchar](8) NOT NULL,
	[descr] [nvarchar](60) NOT NULL,
	[amt] [numeric](20, 6) NOT NULL,
	[lstMaintDt] [datetime] NULL,
	[inactive] [smallint] NOT NULL,
	[suplCode] [nvarchar](12) NULL,
	[curCode] [nvarchar](3) NULL,
	[prorMeth] [smallint] NOT NULL,
	[glAcct] [nvarchar](45) NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIACST_KEY_0] PRIMARY KEY CLUSTERED 
(
	[addCostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IDX_MIACST_1] ON [dbo].[MIACST]
(
	[suplCode] ASC,
	[addCostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[MIACST] ADD  DEFAULT (' ') FOR [addCostId]
ALTER TABLE [dbo].[MIACST] ADD  DEFAULT (' ') FOR [descr]
ALTER TABLE [dbo].[MIACST] ADD  DEFAULT ((0)) FOR [amt]
ALTER TABLE [dbo].[MIACST] ADD  DEFAULT ((0)) FOR [inactive]
ALTER TABLE [dbo].[MIACST] ADD  DEFAULT ((0)) FOR [prorMeth]
ALTER TABLE [dbo].[MIACST]  WITH CHECK ADD FOREIGN KEY([curCode])
REFERENCES [dbo].[MICCD] ([curId])
ALTER TABLE [dbo].[MIACST]  WITH CHECK ADD FOREIGN KEY([glAcct])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIACST]  WITH CHECK ADD FOREIGN KEY([suplCode])
REFERENCES [dbo].[MISUPL] ([suplId])
