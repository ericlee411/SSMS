/****** Object:  Table [dbo].[MISCHQTYX]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MISCHQTYX](
	[schNum] [int] NOT NULL,
	[schLine] [int] NOT NULL,
	[schId] [nvarchar](6) NULL,
	[itemId] [nvarchar](24) NOT NULL,
	[locId] [nvarchar](6) NOT NULL,
	[dateISO] [nvarchar](8) NULL,
	[stkQty] [numeric](20, 6) NOT NULL,
	[reqQty] [numeric](20, 6) NOT NULL,
	[recQty] [numeric](20, 6) NOT NULL,
	[planQty] [numeric](20, 6) NOT NULL,
	[shortQty] [numeric](20, 6) NOT NULL,
	[netChange] [numeric](20, 6) NOT NULL,
	[dateDt]  AS (CONVERT([datetime],[dateISO])),
 CONSTRAINT [PK_MISCHQTYX_KEY_0] PRIMARY KEY CLUSTERED 
(
	[schNum] ASC,
	[schLine] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_PADDING ON

CREATE UNIQUE NONCLUSTERED INDEX [IDX_MISCHQTYX_1] ON [dbo].[MISCHQTYX]
(
	[schId] ASC,
	[itemId] ASC,
	[locId] ASC,
	[dateISO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[MISCHQTYX] ADD  DEFAULT ((0)) FOR [schNum]
ALTER TABLE [dbo].[MISCHQTYX] ADD  DEFAULT ((0)) FOR [schLine]
ALTER TABLE [dbo].[MISCHQTYX] ADD  DEFAULT (' ') FOR [itemId]
ALTER TABLE [dbo].[MISCHQTYX] ADD  DEFAULT (' ') FOR [locId]
ALTER TABLE [dbo].[MISCHQTYX] ADD  DEFAULT ((0)) FOR [stkQty]
ALTER TABLE [dbo].[MISCHQTYX] ADD  DEFAULT ((0)) FOR [reqQty]
ALTER TABLE [dbo].[MISCHQTYX] ADD  DEFAULT ((0)) FOR [recQty]
ALTER TABLE [dbo].[MISCHQTYX] ADD  DEFAULT ((0)) FOR [planQty]
ALTER TABLE [dbo].[MISCHQTYX] ADD  DEFAULT ((0)) FOR [shortQty]
ALTER TABLE [dbo].[MISCHQTYX] ADD  DEFAULT ((0)) FOR [netChange]
ALTER TABLE [dbo].[MISCHQTYX]  WITH CHECK ADD FOREIGN KEY([schId])
REFERENCES [dbo].[MISCHID] ([schId])
