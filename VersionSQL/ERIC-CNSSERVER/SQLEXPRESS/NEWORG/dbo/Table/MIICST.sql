/****** Object:  Table [dbo].[MIICST]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIICST](
	[itemId] [nvarchar](24) NOT NULL,
	[transDate] [nvarchar](8) NOT NULL,
	[seqNo] [int] NOT NULL,
	[locId] [nvarchar](6) NULL,
	[type] [smallint] NOT NULL,
	[tranType] [smallint] NOT NULL,
	[suplId] [nvarchar](12) NULL,
	[poId] [nvarchar](12) NULL,
	[poRev] [smallint] NULL,
	[poDtl] [int] NULL,
	[reference] [nvarchar](60) NOT NULL,
	[qRecd] [numeric](20, 6) NOT NULL,
	[cost] [numeric](20, 6) NOT NULL,
	[cLand] [numeric](20, 6) NOT NULL,
	[qUsed] [numeric](20, 6) NOT NULL,
	[qWip] [numeric](20, 6) NOT NULL,
	[transDt]  AS (CONVERT([datetime],[transDate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIICST_KEY_0] PRIMARY KEY CLUSTERED 
(
	[itemId] ASC,
	[transDate] ASC,
	[seqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MIICST] ADD  DEFAULT (' ') FOR [itemId]
ALTER TABLE [dbo].[MIICST] ADD  DEFAULT (' ') FOR [transDate]
ALTER TABLE [dbo].[MIICST] ADD  DEFAULT ((0)) FOR [seqNo]
ALTER TABLE [dbo].[MIICST] ADD  DEFAULT ((0)) FOR [type]
ALTER TABLE [dbo].[MIICST] ADD  DEFAULT ((0)) FOR [tranType]
ALTER TABLE [dbo].[MIICST] ADD  DEFAULT (' ') FOR [reference]
ALTER TABLE [dbo].[MIICST] ADD  DEFAULT ((0)) FOR [qRecd]
ALTER TABLE [dbo].[MIICST] ADD  DEFAULT ((0)) FOR [cost]
ALTER TABLE [dbo].[MIICST] ADD  DEFAULT ((0)) FOR [cLand]
ALTER TABLE [dbo].[MIICST] ADD  DEFAULT ((0)) FOR [qUsed]
ALTER TABLE [dbo].[MIICST] ADD  DEFAULT ((0)) FOR [qWip]
ALTER TABLE [dbo].[MIICST]  WITH CHECK ADD FOREIGN KEY([locId])
REFERENCES [dbo].[MIDLOC] ([locId])
ALTER TABLE [dbo].[MIICST]  WITH CHECK ADD FOREIGN KEY([suplId])
REFERENCES [dbo].[MISUPL] ([suplId])
ALTER TABLE [dbo].[MIICST]  WITH CHECK ADD  CONSTRAINT [FK_MIICST_MIITEM] FOREIGN KEY([itemId])
REFERENCES [dbo].[MIITEM] ([itemId])
ON DELETE CASCADE
ALTER TABLE [dbo].[MIICST] CHECK CONSTRAINT [FK_MIICST_MIITEM]
