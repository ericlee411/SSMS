/****** Object:  Table [dbo].[MISLHIST]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MISLHIST](
	[itemId] [nvarchar](24) NOT NULL,
	[lotId] [nvarchar](40) NOT NULL,
	[tranDate] [nvarchar](8) NOT NULL,
	[userId] [nvarchar](8) NOT NULL,
	[entry] [int] NOT NULL,
	[detail] [int] NOT NULL,
	[uniqueId] [int] NOT NULL,
	[prntItemId] [nvarchar](24) NULL,
	[prntLotId] [nvarchar](40) NULL,
	[type] [smallint] NOT NULL,
	[qty] [numeric](20, 6) NOT NULL,
	[locId] [nvarchar](6) NULL,
	[binId] [nvarchar](24) NULL,
	[jobId] [nvarchar](12) NULL,
	[xvarToLoc] [nvarchar](6) NULL,
	[xvarBinId] [nvarchar](24) NULL,
	[xvarPOId] [nvarchar](12) NULL,
	[xvarPORev] [smallint] NULL,
	[xvarWOId] [nvarchar](12) NULL,
	[xvarMOId] [nvarchar](15) NULL,
	[xvarSuplId] [nvarchar](12) NULL,
	[xvarSalesId] [nvarchar](256) NULL,
	[xvarSalesQty] [numeric](20, 6) NOT NULL,
	[xvarSOId] [nvarchar](256) NULL,
	[xvarSOLn] [int] NOT NULL,
	[xvarBillId] [nvarchar](256) NULL,
	[assignedBy] [nvarchar](8) NULL,
	[assignedDate] [nvarchar](8) NULL,
	[tranDt]  AS (CONVERT([datetime],[tranDate])),
	[assignedDt]  AS (CONVERT([datetime],[assignedDate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MISLHIST_KEY_0] PRIMARY KEY CLUSTERED 
(
	[itemId] ASC,
	[lotId] ASC,
	[tranDate] ASC,
	[userId] ASC,
	[entry] ASC,
	[detail] ASC,
	[uniqueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IDX_MISLHIST_1] ON [dbo].[MISLHIST]
(
	[prntItemId] ASC,
	[prntLotId] ASC,
	[type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[MISLHIST] ADD  DEFAULT (' ') FOR [userId]
ALTER TABLE [dbo].[MISLHIST] ADD  DEFAULT ((0)) FOR [entry]
ALTER TABLE [dbo].[MISLHIST] ADD  DEFAULT ((0)) FOR [detail]
ALTER TABLE [dbo].[MISLHIST] ADD  DEFAULT ((0)) FOR [uniqueId]
ALTER TABLE [dbo].[MISLHIST] ADD  DEFAULT ((0)) FOR [type]
ALTER TABLE [dbo].[MISLHIST] ADD  DEFAULT ((0)) FOR [qty]
ALTER TABLE [dbo].[MISLHIST] ADD  DEFAULT (' ') FOR [xvarSalesId]
ALTER TABLE [dbo].[MISLHIST] ADD  DEFAULT ((0)) FOR [xvarSalesQty]
ALTER TABLE [dbo].[MISLHIST] ADD  DEFAULT ((0)) FOR [xvarSOLn]
