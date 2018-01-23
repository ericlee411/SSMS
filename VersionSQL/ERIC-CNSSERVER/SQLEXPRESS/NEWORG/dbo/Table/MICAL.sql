/****** Object:  Table [dbo].[MICAL]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MICAL](
	[sCalDate] [nvarchar](8) NOT NULL,
	[calDt]  AS (CONVERT([datetime],[sCalDate])),
	[dtInfo] [nvarchar](60) NOT NULL,
	[type] [smallint] NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MICAL_KEY_0] PRIMARY KEY CLUSTERED 
(
	[sCalDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MICAL] ADD  DEFAULT ('19000101') FOR [sCalDate]
ALTER TABLE [dbo].[MICAL] ADD  DEFAULT (' ') FOR [dtInfo]
ALTER TABLE [dbo].[MICAL] ADD  DEFAULT ((0)) FOR [type]
