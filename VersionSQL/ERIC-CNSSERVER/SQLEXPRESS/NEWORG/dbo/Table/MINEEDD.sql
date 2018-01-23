/****** Object:  Table [dbo].[MINEEDD]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MINEEDD](
	[needNo] [int] NOT NULL,
	[uniqItemLoc] [int] NOT NULL,
	[uniqDay] [int] NOT NULL,
	[entry] [int] NOT NULL,
	[needSource] [int] NOT NULL,
	[needId] [nvarchar](15) NOT NULL,
	[itemId] [nvarchar](24) NOT NULL,
	[locId] [nvarchar](6) NOT NULL,
	[reqISODate] [nvarchar](8) NOT NULL,
	[pooISODate] [nvarchar](8) NULL,
	[wooISODate] [nvarchar](8) NULL,
	[mooISODate] [nvarchar](8) NULL,
	[popQty] [numeric](20, 6) NOT NULL,
	[wopQty] [numeric](20, 6) NOT NULL,
	[mopQty] [numeric](20, 6) NOT NULL,
	[posQty] [numeric](20, 6) NOT NULL,
	[wosQty] [numeric](20, 6) NOT NULL,
	[mosQty] [numeric](20, 6) NOT NULL,
	[shortQty] [numeric](20, 6) NOT NULL,
	[excess] [numeric](20, 6) NOT NULL,
	[revId] [nvarchar](6) NULL,
	[SOId] [nvarchar](256) NULL,
	[Detail] [int] NOT NULL,
	[customer] [nvarchar](256) NOT NULL,
	[mohId] [nvarchar](15) NULL,
	[momdId] [int] NOT NULL,
	[reqDate]  AS (CONVERT([datetime],[reqISODate])),
	[pooDate]  AS (CONVERT([datetime],[pooISODate])),
	[wooDate]  AS (CONVERT([datetime],[wooISODate])),
	[mooDate]  AS (CONVERT([datetime],[mooISODate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MINEEDD_KEY_0] PRIMARY KEY CLUSTERED 
(
	[needNo] ASC,
	[uniqItemLoc] ASC,
	[uniqDay] ASC,
	[entry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_PADDING ON

CREATE UNIQUE NONCLUSTERED INDEX [IDX_MINEEDD_1] ON [dbo].[MINEEDD]
(
	[needSource] ASC,
	[needId] ASC,
	[itemId] ASC,
	[locId] ASC,
	[reqISODate] ASC,
	[entry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[MINEEDD] ADD  DEFAULT ((0)) FOR [needNo]
ALTER TABLE [dbo].[MINEEDD] ADD  DEFAULT ((0)) FOR [uniqItemLoc]
ALTER TABLE [dbo].[MINEEDD] ADD  DEFAULT ((0)) FOR [uniqDay]
ALTER TABLE [dbo].[MINEEDD] ADD  DEFAULT ((0)) FOR [entry]
ALTER TABLE [dbo].[MINEEDD] ADD  DEFAULT ((0)) FOR [needSource]
ALTER TABLE [dbo].[MINEEDD] ADD  DEFAULT (' ') FOR [needId]
ALTER TABLE [dbo].[MINEEDD] ADD  DEFAULT (' ') FOR [locId]
ALTER TABLE [dbo].[MINEEDD] ADD  DEFAULT ((0)) FOR [popQty]
ALTER TABLE [dbo].[MINEEDD] ADD  DEFAULT ((0)) FOR [wopQty]
ALTER TABLE [dbo].[MINEEDD] ADD  DEFAULT ((0)) FOR [mopQty]
ALTER TABLE [dbo].[MINEEDD] ADD  DEFAULT ((0)) FOR [posQty]
ALTER TABLE [dbo].[MINEEDD] ADD  DEFAULT ((0)) FOR [wosQty]
ALTER TABLE [dbo].[MINEEDD] ADD  DEFAULT ((0)) FOR [mosQty]
ALTER TABLE [dbo].[MINEEDD] ADD  DEFAULT ((0)) FOR [shortQty]
ALTER TABLE [dbo].[MINEEDD] ADD  DEFAULT ((0)) FOR [excess]
ALTER TABLE [dbo].[MINEEDD] ADD  DEFAULT (' ') FOR [SOId]
ALTER TABLE [dbo].[MINEEDD] ADD  DEFAULT ((0)) FOR [Detail]
ALTER TABLE [dbo].[MINEEDD] ADD  DEFAULT (' ') FOR [customer]
ALTER TABLE [dbo].[MINEEDD] ADD  DEFAULT ((0)) FOR [momdId]
ALTER TABLE [dbo].[MINEEDD]  WITH CHECK ADD  CONSTRAINT [FK_MINEEDD_MINEEDH] FOREIGN KEY([needNo], [uniqItemLoc])
REFERENCES [dbo].[MINEEDH] ([needNo], [uniqItemLoc])
ON DELETE CASCADE
ALTER TABLE [dbo].[MINEEDD] CHECK CONSTRAINT [FK_MINEEDD_MINEEDH]
