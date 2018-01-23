/****** Object:  Table [dbo].[MIBINH]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIBINH](
	[itemId] [nvarchar](24) NOT NULL,
	[tranDate] [nvarchar](8) NOT NULL,
	[userId] [nvarchar](8) NOT NULL,
	[entry] [int] NOT NULL,
	[detail] [int] NOT NULL,
	[locId] [nvarchar](6) NULL,
	[type] [smallint] NOT NULL,
	[dType] [smallint] NOT NULL,
	[trnQty] [numeric](20, 6) NOT NULL,
	[recQty] [numeric](20, 6) NOT NULL,
	[xvarPOId] [nvarchar](12) NULL,
	[xvarMOId] [nvarchar](15) NULL,
	[xvarParent] [nvarchar](24) NULL,
	[xvarICId] [nvarchar](256) NULL,
	[xvarToLoc] [nvarchar](6) NULL,
	[tranDt]  AS (CONVERT([datetime],[tranDate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIBINH_KEY_0] PRIMARY KEY CLUSTERED 
(
	[itemId] ASC,
	[tranDate] ASC,
	[userId] ASC,
	[entry] ASC,
	[detail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MIBINH] ADD  DEFAULT (' ') FOR [userId]
ALTER TABLE [dbo].[MIBINH] ADD  DEFAULT ((0)) FOR [entry]
ALTER TABLE [dbo].[MIBINH] ADD  DEFAULT ((0)) FOR [detail]
ALTER TABLE [dbo].[MIBINH] ADD  DEFAULT ((0)) FOR [type]
ALTER TABLE [dbo].[MIBINH] ADD  DEFAULT ((0)) FOR [dType]
ALTER TABLE [dbo].[MIBINH] ADD  DEFAULT ((0)) FOR [trnQty]
ALTER TABLE [dbo].[MIBINH] ADD  DEFAULT ((0)) FOR [recQty]
ALTER TABLE [dbo].[MIBINH]  WITH CHECK ADD FOREIGN KEY([itemId])
REFERENCES [dbo].[MIITEM] ([itemId])
ALTER TABLE [dbo].[MIBINH]  WITH CHECK ADD FOREIGN KEY([locId])
REFERENCES [dbo].[MIDLOC] ([locId])
ALTER TABLE [dbo].[MIBINH]  WITH CHECK ADD FOREIGN KEY([xvarParent])
REFERENCES [dbo].[MIITEM] ([itemId])
ALTER TABLE [dbo].[MIBINH]  WITH CHECK ADD FOREIGN KEY([xvarToLoc])
REFERENCES [dbo].[MIDLOC] ([locId])
