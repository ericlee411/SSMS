/****** Object:  Table [dbo].[MIITEM]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIITEM](
	[itemId] [nvarchar](24) NOT NULL,
	[descr] [nvarchar](60) NOT NULL,
	[xdesc] [nvarchar](2000) NOT NULL,
	[ref] [nvarchar](24) NOT NULL,
	[pick] [nvarchar](24) NOT NULL,
	[sales] [nvarchar](256) NOT NULL,
	[uOfM] [nvarchar](20) NOT NULL,
	[poUOfM] [nvarchar](20) NOT NULL,
	[uConvFact] [numeric](20, 6) NOT NULL,
	[glId] [nvarchar](8) NULL,
	[segId] [nvarchar](15) NULL,
	[cycle] [int] NOT NULL,
	[type] [smallint] NOT NULL,
	[revId] [nvarchar](6) NULL,
	[track] [smallint] NOT NULL,
	[lead] [int] NOT NULL,
	[lstUseDate] [nvarchar](8) NULL,
	[lstPIDate] [nvarchar](8) NULL,
	[minLvl] [numeric](20, 6) NOT NULL,
	[maxLvl] [numeric](20, 6) NOT NULL,
	[ordLvl] [numeric](20, 6) NOT NULL,
	[ordQty] [numeric](20, 6) NOT NULL,
	[variance] [numeric](20, 6) NOT NULL,
	[lotSz] [numeric](20, 6) NOT NULL,
	[cLast] [numeric](20, 6) NOT NULL,
	[cStd] [numeric](20, 6) NOT NULL,
	[cAvg] [numeric](20, 6) NOT NULL,
	[cLand] [numeric](20, 6) NOT NULL,
	[unitWgt] [numeric](20, 6) NOT NULL,
	[locId] [nvarchar](6) NULL,
	[suplId] [nvarchar](12) NULL,
	[mfgId] [nvarchar](12) NULL,
	[lotMeth] [smallint] NOT NULL,
	[glAcct] [nvarchar](45) NULL,
	[apDist] [nvarchar](6) NULL,
	[a0Status] [smallint] NOT NULL,
	[a0Func] [smallint] NOT NULL,
	[a0Vol] [numeric](20, 6) NOT NULL,
	[a0StartDate] [nvarchar](8) NULL,
	[a0EndDate] [nvarchar](8) NULL,
	[a0Off] [smallint] NOT NULL,
	[a1Status] [smallint] NOT NULL,
	[a1Func] [smallint] NOT NULL,
	[a1Vol] [numeric](20, 6) NOT NULL,
	[a1StartDate] [nvarchar](8) NULL,
	[a1EndDate] [nvarchar](8) NULL,
	[a1Off] [smallint] NOT NULL,
	[a2Status] [smallint] NOT NULL,
	[a2Func] [smallint] NOT NULL,
	[a2Vol] [numeric](20, 6) NOT NULL,
	[a2StartDate] [nvarchar](8) NULL,
	[a2EndDate] [nvarchar](8) NULL,
	[a2Off] [smallint] NOT NULL,
	[status] [smallint] NOT NULL,
	[bHuman] [bit] NOT NULL,
	[fldXml] [text] NOT NULL,
	[lstUseDt]  AS (CONVERT([datetime],[lstUseDate])),
	[lstPIDt]  AS (CONVERT([datetime],[lstPIDate])),
	[a0Start]  AS (CONVERT([datetime],[a0StartDate])),
	[a0End]  AS (CONVERT([datetime],[a0EndDate])),
	[a1Start]  AS (CONVERT([datetime],[a1StartDate])),
	[a1End]  AS (CONVERT([datetime],[a1EndDate])),
	[a2Start]  AS (CONVERT([datetime],[a2StartDate])),
	[a2End]  AS (CONVERT([datetime],[a2EndDate])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIITEM_KEY_0] PRIMARY KEY CLUSTERED 
(
	[itemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

SET ANSI_PADDING ON

CREATE NONCLUSTERED INDEX [IDX_MIITEM_1] ON [dbo].[MIITEM]
(
	[sales] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT (' ') FOR [itemId]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT (' ') FOR [descr]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT (' ') FOR [xdesc]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT (' ') FOR [ref]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT (' ') FOR [pick]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT (' ') FOR [sales]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT (' ') FOR [uOfM]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT (' ') FOR [poUOfM]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT ((1)) FOR [uConvFact]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT ((0)) FOR [cycle]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT ((0)) FOR [type]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT ((0)) FOR [track]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT ((0)) FOR [lead]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT ((0)) FOR [minLvl]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT ((0)) FOR [maxLvl]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT ((0)) FOR [ordLvl]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT ((0)) FOR [ordQty]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT ((0)) FOR [variance]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT ((1)) FOR [lotSz]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT ((0)) FOR [cLast]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT ((0)) FOR [cStd]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT ((0)) FOR [cAvg]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT ((0)) FOR [cLand]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT ((0)) FOR [unitWgt]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT ((0)) FOR [lotMeth]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT ((0)) FOR [a0Status]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT ((0)) FOR [a0Func]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT ((0)) FOR [a0Vol]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT ((0)) FOR [a0Off]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT ((0)) FOR [a1Status]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT ((0)) FOR [a1Func]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT ((0)) FOR [a1Vol]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT ((0)) FOR [a1Off]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT ((0)) FOR [a2Status]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT ((0)) FOR [a2Func]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT ((0)) FOR [a2Vol]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT ((0)) FOR [a2Off]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT ((0)) FOR [status]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT ((0)) FOR [bHuman]
ALTER TABLE [dbo].[MIITEM] ADD  DEFAULT (' ') FOR [fldXml]
ALTER TABLE [dbo].[MIITEM]  WITH CHECK ADD FOREIGN KEY([glId])
REFERENCES [dbo].[MIACCT] ([setId])
ALTER TABLE [dbo].[MIITEM]  WITH CHECK ADD FOREIGN KEY([locId])
REFERENCES [dbo].[MIDLOC] ([locId])
ALTER TABLE [dbo].[MIITEM]  WITH CHECK ADD FOREIGN KEY([suplId])
REFERENCES [dbo].[MISUPL] ([suplId])
