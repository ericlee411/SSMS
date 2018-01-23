/****** Object:  Table [dbo].[MIACCT]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIACCT](
	[setId] [nvarchar](8) NOT NULL,
	[setName] [nvarchar](60) NOT NULL,
	[acct1] [nvarchar](45) NULL,
	[acct2] [nvarchar](45) NULL,
	[acct3] [nvarchar](45) NULL,
	[acct4] [nvarchar](45) NULL,
	[acct5] [nvarchar](45) NULL,
	[acct6] [nvarchar](45) NULL,
	[acct7] [nvarchar](45) NULL,
	[acct8] [nvarchar](45) NULL,
	[acct9] [nvarchar](45) NULL,
	[acct10] [nvarchar](45) NULL,
	[acct11] [nvarchar](45) NULL,
	[acct12] [nvarchar](45) NULL,
	[acct13] [nvarchar](45) NULL,
	[acct14] [nvarchar](45) NULL,
	[acct15] [nvarchar](45) NULL,
	[acct16] [nvarchar](45) NULL,
	[acct17] [nvarchar](45) NULL,
	[acct18] [nvarchar](45) NULL,
	[acct19] [nvarchar](45) NULL,
	[acct20] [nvarchar](45) NULL,
	[acct21] [nvarchar](45) NULL,
	[acct22] [nvarchar](45) NULL,
	[acct23] [nvarchar](45) NULL,
	[acct24] [nvarchar](45) NULL,
	[acct25] [nvarchar](45) NULL,
	[acct26] [nvarchar](45) NULL,
	[acct27] [nvarchar](45) NULL,
	[acct28] [nvarchar](45) NULL,
	[acct29] [nvarchar](45) NULL,
	[acct30] [nvarchar](45) NULL,
	[acct31] [nvarchar](45) NULL,
	[acct32] [nvarchar](45) NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIACCT_KEY_0] PRIMARY KEY CLUSTERED 
(
	[setId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MIACCT] ADD  DEFAULT (' ') FOR [setId]
ALTER TABLE [dbo].[MIACCT] ADD  DEFAULT (' ') FOR [setName]
ALTER TABLE [dbo].[MIACCT]  WITH CHECK ADD FOREIGN KEY([acct1])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIACCT]  WITH CHECK ADD FOREIGN KEY([acct10])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIACCT]  WITH CHECK ADD FOREIGN KEY([acct11])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIACCT]  WITH CHECK ADD FOREIGN KEY([acct12])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIACCT]  WITH CHECK ADD FOREIGN KEY([acct13])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIACCT]  WITH CHECK ADD FOREIGN KEY([acct14])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIACCT]  WITH CHECK ADD FOREIGN KEY([acct15])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIACCT]  WITH CHECK ADD FOREIGN KEY([acct16])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIACCT]  WITH CHECK ADD FOREIGN KEY([acct17])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIACCT]  WITH CHECK ADD FOREIGN KEY([acct18])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIACCT]  WITH CHECK ADD FOREIGN KEY([acct19])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIACCT]  WITH CHECK ADD FOREIGN KEY([acct2])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIACCT]  WITH CHECK ADD FOREIGN KEY([acct20])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIACCT]  WITH CHECK ADD FOREIGN KEY([acct21])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIACCT]  WITH CHECK ADD FOREIGN KEY([acct22])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIACCT]  WITH CHECK ADD FOREIGN KEY([acct23])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIACCT]  WITH CHECK ADD FOREIGN KEY([acct24])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIACCT]  WITH CHECK ADD FOREIGN KEY([acct25])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIACCT]  WITH CHECK ADD FOREIGN KEY([acct26])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIACCT]  WITH CHECK ADD FOREIGN KEY([acct27])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIACCT]  WITH CHECK ADD FOREIGN KEY([acct28])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIACCT]  WITH CHECK ADD FOREIGN KEY([acct29])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIACCT]  WITH CHECK ADD FOREIGN KEY([acct3])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIACCT]  WITH CHECK ADD FOREIGN KEY([acct30])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIACCT]  WITH CHECK ADD FOREIGN KEY([acct31])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIACCT]  WITH CHECK ADD FOREIGN KEY([acct32])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIACCT]  WITH CHECK ADD FOREIGN KEY([acct4])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIACCT]  WITH CHECK ADD FOREIGN KEY([acct5])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIACCT]  WITH CHECK ADD FOREIGN KEY([acct6])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIACCT]  WITH CHECK ADD FOREIGN KEY([acct7])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIACCT]  WITH CHECK ADD FOREIGN KEY([acct8])
REFERENCES [dbo].[MIGLACCT] ([acctId])
ALTER TABLE [dbo].[MIACCT]  WITH CHECK ADD FOREIGN KEY([acct9])
REFERENCES [dbo].[MIGLACCT] ([acctId])
