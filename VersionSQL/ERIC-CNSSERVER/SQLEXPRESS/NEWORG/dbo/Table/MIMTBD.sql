/****** Object:  Table [dbo].[MIMTBD]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIMTBD](
	[userId] [nvarchar](8) NOT NULL,
	[batchId] [nvarchar](6) NOT NULL,
	[entry] [int] NOT NULL,
	[lineNbr] [smallint] NOT NULL,
	[type] [smallint] NOT NULL,
	[itemId] [nvarchar](24) NULL,
	[revId] [nvarchar](6) NULL,
	[comment] [nvarchar](60) NOT NULL,
	[qty] [numeric](20, 6) NOT NULL,
	[jobId] [nvarchar](12) NULL,
	[locId] [nvarchar](6) NULL,
	[binId] [nvarchar](24) NULL,
	[byLot] [bit] NOT NULL,
	[inverseDir] [bit] NOT NULL,
	[xvarItemId] [nvarchar](24) NULL,
	[xvarToLoc] [nvarchar](6) NULL,
	[xvarBinId] [nvarchar](24) NULL,
	[xvarSuplId] [nvarchar](12) NULL,
	[xvarPOId] [nvarchar](12) NULL,
	[xvarPORev] [smallint] NOT NULL,
	[xvarMOId] [nvarchar](15) NULL,
	[xvarSOId] [nvarchar](256) NULL,
	[xvarXol] [smallint] NOT NULL,
	[xvarDtl] [int] NOT NULL,
	[xvarOpCode] [nvarchar](24) NULL,
	[xvarICId] [nvarchar](256) NULL,
	[xvarICLoc] [nvarchar](256) NULL,
	[xvarNoStk] [bit] NOT NULL,
	[xvarQbase] [smallint] NOT NULL,
	[xvarLevel] [smallint] NOT NULL,
	[xvarCost] [numeric](20, 6) NOT NULL,
	[status] [smallint] NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIMTBD_KEY_0] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[batchId] ASC,
	[entry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MIMTBD] ADD  DEFAULT ('000000') FOR [batchId]
ALTER TABLE [dbo].[MIMTBD] ADD  DEFAULT ((0)) FOR [entry]
ALTER TABLE [dbo].[MIMTBD] ADD  DEFAULT ((0)) FOR [lineNbr]
ALTER TABLE [dbo].[MIMTBD] ADD  DEFAULT ((0)) FOR [type]
ALTER TABLE [dbo].[MIMTBD] ADD  DEFAULT (' ') FOR [comment]
ALTER TABLE [dbo].[MIMTBD] ADD  DEFAULT ((0)) FOR [qty]
ALTER TABLE [dbo].[MIMTBD] ADD  DEFAULT ((0)) FOR [byLot]
ALTER TABLE [dbo].[MIMTBD] ADD  DEFAULT ((0)) FOR [inverseDir]
ALTER TABLE [dbo].[MIMTBD] ADD  DEFAULT ((0)) FOR [xvarPORev]
ALTER TABLE [dbo].[MIMTBD] ADD  DEFAULT ((0)) FOR [xvarXol]
ALTER TABLE [dbo].[MIMTBD] ADD  DEFAULT ((-1)) FOR [xvarDtl]
ALTER TABLE [dbo].[MIMTBD] ADD  DEFAULT ((0)) FOR [xvarNoStk]
ALTER TABLE [dbo].[MIMTBD] ADD  DEFAULT ((0)) FOR [xvarQbase]
ALTER TABLE [dbo].[MIMTBD] ADD  DEFAULT ((0)) FOR [xvarLevel]
ALTER TABLE [dbo].[MIMTBD] ADD  DEFAULT ((0)) FOR [xvarCost]
ALTER TABLE [dbo].[MIMTBD] ADD  DEFAULT ((0)) FOR [status]
ALTER TABLE [dbo].[MIMTBD]  WITH CHECK ADD FOREIGN KEY([itemId])
REFERENCES [dbo].[MIITEM] ([itemId])
ALTER TABLE [dbo].[MIMTBD]  WITH CHECK ADD FOREIGN KEY([jobId])
REFERENCES [dbo].[MIJOBH] ([jobId])
ALTER TABLE [dbo].[MIMTBD]  WITH CHECK ADD FOREIGN KEY([locId])
REFERENCES [dbo].[MIDLOC] ([locId])
ALTER TABLE [dbo].[MIMTBD]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[MIUSER] ([userId])
ALTER TABLE [dbo].[MIMTBD]  WITH CHECK ADD FOREIGN KEY([xvarMOId])
REFERENCES [dbo].[MIMOH] ([mohId])
ALTER TABLE [dbo].[MIMTBD]  WITH CHECK ADD FOREIGN KEY([xvarSuplId])
REFERENCES [dbo].[MISUPL] ([suplId])
ALTER TABLE [dbo].[MIMTBD]  WITH CHECK ADD FOREIGN KEY([xvarToLoc])
REFERENCES [dbo].[MIDLOC] ([locId])
ALTER TABLE [dbo].[MIMTBD]  WITH CHECK ADD  CONSTRAINT [FK_MIMTBD_MIMTBH] FOREIGN KEY([userId], [batchId])
REFERENCES [dbo].[MIMTBH] ([userId], [batchId])
ON DELETE CASCADE
ALTER TABLE [dbo].[MIMTBD] CHECK CONSTRAINT [FK_MIMTBD_MIMTBH]
