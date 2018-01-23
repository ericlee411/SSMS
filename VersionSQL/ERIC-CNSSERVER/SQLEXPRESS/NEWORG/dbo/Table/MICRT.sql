/****** Object:  Table [dbo].[MICRT]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MICRT](
	[rateType] [nvarchar](2) NOT NULL,
	[rateDesc] [nvarchar](60) NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MICRT_KEY_0] PRIMARY KEY CLUSTERED 
(
	[rateType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MICRT] ADD  DEFAULT (' ') FOR [rateType]
ALTER TABLE [dbo].[MICRT] ADD  DEFAULT (' ') FOR [rateDesc]
