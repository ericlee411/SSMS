/****** Object:  Table [dbo].[MISLPRC]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MISLPRC](
	[lineNbr] [smallint] NOT NULL,
	[itemId] [nvarchar](24) NULL,
	[lotId] [nvarchar](40) NULL,
	[prntItemId] [nvarchar](24) NULL,
	[prntLotId] [nvarchar](40) NULL,
	[locId] [nvarchar](6) NULL,
	[binId] [nvarchar](24) NULL,
	[qStk] [numeric](20, 6) NOT NULL,
	[qWip] [numeric](20, 6) NOT NULL,
	[recQty] [numeric](20, 6) NOT NULL,
	[seqNo] [int] NOT NULL,
	[xtype] [smallint] NOT NULL,
	[expireDate] [nvarchar](8) NULL,
	[rcvdDate] [nvarchar](8) NULL,
	[autoCreate] [bit] NOT NULL,
	[descr] [nvarchar](60) NOT NULL,
	[expireDt]  AS (CONVERT([datetime],[expireDate])),
	[rcvdDt]  AS (CONVERT([datetime],[rcvdDate])),
 CONSTRAINT [PK_MISLPRC_KEY_0] PRIMARY KEY CLUSTERED 
(
	[lineNbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MISLPRC] ADD  DEFAULT ((0)) FOR [lineNbr]
ALTER TABLE [dbo].[MISLPRC] ADD  DEFAULT ((0)) FOR [qStk]
ALTER TABLE [dbo].[MISLPRC] ADD  DEFAULT ((0)) FOR [qWip]
ALTER TABLE [dbo].[MISLPRC] ADD  DEFAULT ((0)) FOR [recQty]
ALTER TABLE [dbo].[MISLPRC] ADD  DEFAULT ((0)) FOR [seqNo]
ALTER TABLE [dbo].[MISLPRC] ADD  DEFAULT ((100)) FOR [xtype]
ALTER TABLE [dbo].[MISLPRC] ADD  DEFAULT ((0)) FOR [autoCreate]
ALTER TABLE [dbo].[MISLPRC] ADD  DEFAULT (' ') FOR [descr]
ALTER TABLE [dbo].[MISLPRC]  WITH CHECK ADD FOREIGN KEY([itemId])
REFERENCES [dbo].[MIITEM] ([itemId])
ALTER TABLE [dbo].[MISLPRC]  WITH CHECK ADD FOREIGN KEY([locId])
REFERENCES [dbo].[MIDLOC] ([locId])
ALTER TABLE [dbo].[MISLPRC]  WITH CHECK ADD FOREIGN KEY([prntItemId])
REFERENCES [dbo].[MIITEM] ([itemId])
