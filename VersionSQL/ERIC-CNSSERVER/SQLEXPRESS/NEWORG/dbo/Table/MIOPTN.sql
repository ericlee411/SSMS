/****** Object:  Table [dbo].[MIOPTN]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIOPTN](
	[orgId] [nvarchar](12) NOT NULL,
	[descr] [nvarchar](60) NOT NULL,
	[orgType] [smallint] NOT NULL,
	[coName] [nvarchar](60) NOT NULL,
	[adr1] [nvarchar](60) NOT NULL,
	[adr2] [nvarchar](60) NOT NULL,
	[adr3] [nvarchar](60) NOT NULL,
	[adr4] [nvarchar](60) NOT NULL,
	[city] [nvarchar](30) NOT NULL,
	[state] [nvarchar](30) NOT NULL,
	[zip] [nvarchar](20) NOT NULL,
	[country] [nvarchar](30) NOT NULL,
	[phone] [nvarchar](30) NOT NULL,
	[fax] [nvarchar](30) NOT NULL,
	[email] [nvarchar](60) NOT NULL,
	[contactName] [nvarchar](60) NOT NULL,
	[contactEmail] [nvarchar](60) NOT NULL,
	[homeCur] [nvarchar](3) NOT NULL,
	[multiCurSw] [bit] NOT NULL,
	[rateType] [nvarchar](2) NULL,
	[weightUnit] [nvarchar](10) NOT NULL,
	[bomRevSw] [bit] NOT NULL,
	[rollSw] [bit] NOT NULL,
	[costMethod] [smallint] NOT NULL,
	[multiLocSw] [bit] NOT NULL,
	[jobTrackSw] [bit] NOT NULL,
	[jobReqSw] [bit] NOT NULL,
	[lotTrackSw] [bit] NOT NULL,
	[lotAutoAssignSw] [bit] NOT NULL,
	[lotTrackWipSw] [bit] NOT NULL,
	[binTrackSw] [bit] NOT NULL,
	[scAutoBldSw] [bit] NOT NULL,
	[stAutoBldSw] [bit] NOT NULL,
	[stConfirmSw] [bit] NOT NULL,
	[stCompleteSw] [bit] NOT NULL,
	[acctModule] [smallint] NOT NULL,
	[apFeedSw] [bit] NOT NULL,
	[glFeedSw] [bit] NOT NULL,
	[icFeedSw] [bit] NOT NULL,
	[oeFeedSw] [bit] NOT NULL,
	[poFeedSw] [bit] NOT NULL,
	[locOper] [smallint] NOT NULL,
	[locGlSegNo] [smallint] NOT NULL,
	[locSz] [smallint] NOT NULL,
	[locDflt] [nvarchar](15) NOT NULL,
	[itemOper] [smallint] NOT NULL,
	[itemGlSegNo] [smallint] NOT NULL,
	[itemSz] [smallint] NOT NULL,
	[itemDflt] [nvarchar](15) NOT NULL,
	[jobOper] [smallint] NOT NULL,
	[jobGlSegNo] [smallint] NOT NULL,
	[jobSz] [smallint] NOT NULL,
	[jobDflt] [nvarchar](15) NOT NULL,
	[jrnlNo] [int] NOT NULL,
	[poQueueSw] [bit] NOT NULL,
	[poTaxSw] [bit] NOT NULL,
	[poRcvrSw] [bit] NOT NULL,
	[negQtySw] [bit] NOT NULL,
	[poIdInc] [smallint] NOT NULL,
	[moIdInc] [smallint] NOT NULL,
	[woIdInc] [smallint] NOT NULL,
	[lotIdInc] [smallint] NOT NULL,
	[srlIdInc] [smallint] NOT NULL,
	[binIdInc] [smallint] NOT NULL,
	[qDec] [smallint] NOT NULL,
	[mDec] [smallint] NOT NULL,
	[tDec] [smallint] NOT NULL,
	[logTimeSw] [bit] NOT NULL,
	[addCostSw] [bit] NOT NULL,
	[docPath] [nvarchar](260) NOT NULL,
	[picPath] [nvarchar](260) NOT NULL,
	[spDate] [datetime] NULL,
	[versVer] [nvarchar](20) NOT NULL,
	[versSerial] [nvarchar](20) NOT NULL,
	[itemFmt] [nvarchar](40) NOT NULL,
	[refFmt] [nvarchar](40) NOT NULL,
	[pickFmt] [nvarchar](40) NOT NULL,
	[salesFmt] [nvarchar](40) NOT NULL,
	[telFmt] [nvarchar](40) NOT NULL,
	[faxFmt] [nvarchar](40) NOT NULL,
	[lotFmt] [nvarchar](60) NOT NULL,
	[srlFmt] [nvarchar](60) NOT NULL,
	[binFmt] [nvarchar](60) NOT NULL,
	[companyURL] [nvarchar](260) NOT NULL,
	[infoCenterURL] [nvarchar](260) NOT NULL,
	[recCostSw] [smallint] NOT NULL,
	[optInt1] [smallint] NOT NULL,
	[optInt2] [smallint] NOT NULL,
	[optStr1] [nvarchar](60) NOT NULL,
	[optStr2] [nvarchar](60) NOT NULL,
	[optXml] [text] NOT NULL,
	[workWeek] [int] NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIOPTN_KEY_0] PRIMARY KEY CLUSTERED 
(
	[orgId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT (' ') FOR [descr]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [orgType]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT (' ') FOR [coName]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT (' ') FOR [adr1]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT (' ') FOR [adr2]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT (' ') FOR [adr3]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT (' ') FOR [adr4]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT (' ') FOR [city]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT (' ') FOR [state]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT (' ') FOR [zip]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT (' ') FOR [country]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT (' ') FOR [phone]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT (' ') FOR [fax]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT (' ') FOR [email]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT (' ') FOR [contactName]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT (' ') FOR [contactEmail]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT (' ') FOR [homeCur]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [multiCurSw]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT (' ') FOR [weightUnit]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [bomRevSw]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [rollSw]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [costMethod]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [multiLocSw]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [jobTrackSw]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [jobReqSw]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [lotTrackSw]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [lotAutoAssignSw]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [lotTrackWipSw]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [binTrackSw]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [scAutoBldSw]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [stAutoBldSw]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [stConfirmSw]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [stCompleteSw]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [acctModule]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [apFeedSw]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [glFeedSw]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [icFeedSw]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [oeFeedSw]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [poFeedSw]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [locOper]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [locGlSegNo]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [locSz]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT (' ') FOR [locDflt]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [itemOper]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [itemGlSegNo]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [itemSz]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT (' ') FOR [itemDflt]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [jobOper]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [jobGlSegNo]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [jobSz]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT (' ') FOR [jobDflt]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [jrnlNo]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [poQueueSw]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [poTaxSw]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [poRcvrSw]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((1)) FOR [negQtySw]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [poIdInc]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [moIdInc]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [woIdInc]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [lotIdInc]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [srlIdInc]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [binIdInc]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [qDec]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [mDec]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [tDec]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [logTimeSw]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [addCostSw]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT (' ') FOR [docPath]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT (' ') FOR [picPath]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT (' ') FOR [versVer]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT (' ') FOR [versSerial]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ('>CCCCCCCCCCCCCCCCCCCCCCCC') FOR [itemFmt]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ('>CCCCCCCCCCCCCCCCCCCCCCCC') FOR [refFmt]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ('>CCCCCCCCCCCCCCCCCCCCCCCC') FOR [pickFmt]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ('>CCCCCCCCCCCCCCCCCCCCCCCC') FOR [salesFmt]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ('(###) ###-####') FOR [telFmt]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ('(###) ###-####') FOR [faxFmt]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ('>CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC') FOR [lotFmt]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ('>CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC') FOR [srlFmt]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ('>CCCCCCCCCCCCCCCCCCCCCCCC') FOR [binFmt]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT (' ') FOR [companyURL]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT (' ') FOR [infoCenterURL]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [recCostSw]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [optInt1]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [optInt2]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT (' ') FOR [optStr1]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT (' ') FOR [optStr2]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT (' ') FOR [optXml]
ALTER TABLE [dbo].[MIOPTN] ADD  DEFAULT ((0)) FOR [workWeek]
ALTER TABLE [dbo].[MIOPTN]  WITH CHECK ADD FOREIGN KEY([orgId])
REFERENCES [dbo].[MIORGS] ([orgId])
