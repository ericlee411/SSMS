/****** Object:  Table [dbo].[MIEBX]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIEBX](
	[uniq] [int] NOT NULL,
	[mohId0] [nvarchar](15) NULL,
	[itemId0] [nvarchar](24) NULL,
	[revn0] [nvarchar](6) NULL,
	[qty0] [numeric](20, 6) NOT NULL,
	[mohId1] [nvarchar](15) NULL,
	[itemId1] [nvarchar](24) NULL,
	[revn1] [nvarchar](6) NULL,
	[qty1] [numeric](20, 6) NOT NULL,
	[mohId2] [nvarchar](15) NULL,
	[itemId2] [nvarchar](24) NULL,
	[revn2] [nvarchar](6) NULL,
	[qty2] [numeric](20, 6) NOT NULL,
	[mohId3] [nvarchar](15) NULL,
	[itemId3] [nvarchar](24) NULL,
	[revn3] [nvarchar](6) NULL,
	[qty3] [numeric](20, 6) NOT NULL,
	[mohId4] [nvarchar](15) NULL,
	[itemId4] [nvarchar](24) NULL,
	[revn4] [nvarchar](6) NULL,
	[qty4] [numeric](20, 6) NOT NULL,
	[mohId5] [nvarchar](15) NULL,
	[itemId5] [nvarchar](24) NULL,
	[revn5] [nvarchar](6) NULL,
	[qty5] [numeric](20, 6) NOT NULL,
	[mohId6] [nvarchar](15) NULL,
	[itemId6] [nvarchar](24) NULL,
	[revn6] [nvarchar](6) NULL,
	[qty6] [numeric](20, 6) NOT NULL,
	[mohId7] [nvarchar](15) NULL,
	[itemId7] [nvarchar](24) NULL,
	[revn7] [nvarchar](6) NULL,
	[qty7] [numeric](20, 6) NOT NULL,
	[mohId8] [nvarchar](15) NULL,
	[itemId8] [nvarchar](24) NULL,
	[revn8] [nvarchar](6) NULL,
	[qty8] [numeric](20, 6) NOT NULL,
	[mohId9] [nvarchar](15) NULL,
	[itemId9] [nvarchar](24) NULL,
	[revn9] [nvarchar](6) NULL,
	[qty9] [numeric](20, 6) NOT NULL,
	[mohId10] [nvarchar](15) NULL,
	[itemId10] [nvarchar](24) NULL,
	[revn10] [nvarchar](6) NULL,
	[qty10] [numeric](20, 6) NOT NULL,
	[mohId11] [nvarchar](15) NULL,
	[itemId11] [nvarchar](24) NULL,
	[revn11] [nvarchar](6) NULL,
	[qty11] [numeric](20, 6) NOT NULL,
	[mohId12] [nvarchar](15) NULL,
	[itemId12] [nvarchar](24) NULL,
	[revn12] [nvarchar](6) NULL,
	[qty12] [numeric](20, 6) NOT NULL,
	[mohId13] [nvarchar](15) NULL,
	[itemId13] [nvarchar](24) NULL,
	[revn13] [nvarchar](6) NULL,
	[qty13] [numeric](20, 6) NOT NULL,
	[mohId14] [nvarchar](15) NULL,
	[itemId14] [nvarchar](24) NULL,
	[revn14] [nvarchar](6) NULL,
	[qty14] [numeric](20, 6) NOT NULL,
	[mohId15] [nvarchar](15) NULL,
	[itemId15] [nvarchar](24) NULL,
	[revn15] [nvarchar](6) NULL,
	[qty15] [numeric](20, 6) NOT NULL,
	[mohId16] [nvarchar](15) NULL,
	[itemId16] [nvarchar](24) NULL,
	[revn16] [nvarchar](6) NULL,
	[qty16] [numeric](20, 6) NOT NULL,
	[hiMohId] [nvarchar](15) NULL,
	[hiMomdId] [int] NULL,
	[hiCmohId] [nvarchar](15) NULL,
	[hiItemId] [nvarchar](24) NULL,
	[hiRevn] [nvarchar](6) NULL,
	[hiEntry] [int] NOT NULL,
	[hiLevel] [smallint] NOT NULL,
	[hiQty] [numeric](20, 6) NOT NULL,
	[hiLead] [smallint] NOT NULL,
	[hiCmnt] [nvarchar](60) NOT NULL,
	[hiLocId] [nvarchar](6) NULL,
	[hiWodLn] [smallint] NOT NULL,
	[pick] [nvarchar](24) NOT NULL,
	[minLvl] [numeric](20, 6) NOT NULL,
	[maxLvl] [numeric](20, 6) NOT NULL,
	[ordLvl] [numeric](20, 6) NOT NULL,
	[ordQty] [numeric](20, 6) NOT NULL,
	[lstPIDate] [nvarchar](8) NULL,
	[variance] [numeric](20, 6) NOT NULL,
	[qStk] [numeric](20, 6) NOT NULL,
	[qWip] [numeric](20, 6) NOT NULL,
	[qRes] [numeric](20, 6) NOT NULL,
	[qOrd] [numeric](20, 6) NOT NULL,
	[iqStk] [numeric](20, 6) NOT NULL,
	[iqWip] [numeric](20, 6) NOT NULL,
	[iqRes] [numeric](20, 6) NOT NULL,
	[iqOrd] [numeric](20, 6) NOT NULL,
	[opCode] [nvarchar](24) NULL,
	[rdLineNbr] [smallint] NOT NULL,
	[src] [smallint] NOT NULL,
	[dType] [smallint] NOT NULL,
	[wcId] [nvarchar](24) NULL,
	[toolId] [nvarchar](12) NULL,
	[hiItemUnitCost] [numeric](20, 6) NOT NULL,
	[lstPIDt]  AS (CONVERT([datetime],[lstPIDate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIEBX_KEY_0] PRIMARY KEY CLUSTERED 
(
	[uniq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [uniq]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [mohId0]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [itemId0]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [revn0]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [qty0]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [mohId1]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [itemId1]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [revn1]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [qty1]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [mohId2]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [itemId2]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [revn2]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [qty2]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [mohId3]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [itemId3]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [revn3]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [qty3]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [mohId4]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [itemId4]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [revn4]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [qty4]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [mohId5]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [itemId5]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [revn5]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [qty5]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [mohId6]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [itemId6]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [revn6]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [qty6]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [mohId7]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [itemId7]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [revn7]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [qty7]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [mohId8]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [itemId8]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [revn8]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [qty8]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [mohId9]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [itemId9]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [revn9]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [qty9]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [mohId10]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [itemId10]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [revn10]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [qty10]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [mohId11]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [itemId11]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [revn11]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [qty11]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [mohId12]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [itemId12]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [revn12]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [qty12]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [mohId13]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [itemId13]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [revn13]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [qty13]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [mohId14]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [itemId14]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [revn14]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [qty14]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [mohId15]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [itemId15]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [revn15]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [qty15]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [mohId16]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [itemId16]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [revn16]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [qty16]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [hiMohId]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [hiMomdId]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [hiCmohId]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [hiItemId]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [hiRevn]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [hiEntry]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [hiLevel]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [hiQty]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [hiLead]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [hiCmnt]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [hiWodLn]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [pick]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [minLvl]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [maxLvl]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [ordLvl]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [ordQty]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [variance]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [qStk]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [qWip]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [qRes]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [qOrd]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [iqStk]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [iqWip]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [iqRes]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [iqOrd]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [opCode]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [rdLineNbr]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [src]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [dType]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT (' ') FOR [wcId]
ALTER TABLE [dbo].[MIEBX] ADD  DEFAULT ((0)) FOR [hiItemUnitCost]
