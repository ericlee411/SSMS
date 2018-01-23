/****** Object:  Table [dbo].[MICRTH]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MICRTH](
	[homeCur] [nvarchar](3) NOT NULL,
	[rateType] [nvarchar](2) NOT NULL,
	[tblDesc] [nvarchar](60) NOT NULL,
	[dateMatch] [smallint] NOT NULL,
	[rateOper] [smallint] NOT NULL,
	[rateSrc] [nvarchar](60) NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MICRTH_KEY_0] PRIMARY KEY CLUSTERED 
(
	[homeCur] ASC,
	[rateType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MICRTH] ADD  DEFAULT (' ') FOR [homeCur]
ALTER TABLE [dbo].[MICRTH] ADD  DEFAULT (' ') FOR [tblDesc]
ALTER TABLE [dbo].[MICRTH] ADD  DEFAULT ((3)) FOR [dateMatch]
ALTER TABLE [dbo].[MICRTH] ADD  DEFAULT ((1)) FOR [rateOper]
ALTER TABLE [dbo].[MICRTH] ADD  DEFAULT (' ') FOR [rateSrc]
ALTER TABLE [dbo].[MICRTH]  WITH CHECK ADD FOREIGN KEY([rateType])
REFERENCES [dbo].[MICRT] ([rateType])
