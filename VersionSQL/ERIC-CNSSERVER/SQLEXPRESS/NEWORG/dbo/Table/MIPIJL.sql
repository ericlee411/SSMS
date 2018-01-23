/****** Object:  Table [dbo].[MIPIJL]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIPIJL](
	[entry] [int] NOT NULL,
	[itemId] [nvarchar](24) NULL,
	[locId] [nvarchar](6) NULL,
	[binId] [nvarchar](24) NULL,
	[type] [smallint] NOT NULL,
	[dateISO] [nvarchar](8) NULL,
	[userId] [nvarchar](8) NOT NULL,
	[recStk] [numeric](20, 6) NOT NULL,
	[recWip] [numeric](20, 6) NOT NULL,
	[stk] [numeric](20, 6) NOT NULL,
	[wip] [numeric](20, 6) NOT NULL,
	[date]  AS (CONVERT([datetime],[dateISO])),
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIPIJL_KEY_0] PRIMARY KEY CLUSTERED 
(
	[entry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MIPIJL] ADD  DEFAULT ((0)) FOR [entry]
ALTER TABLE [dbo].[MIPIJL] ADD  DEFAULT ((0)) FOR [type]
ALTER TABLE [dbo].[MIPIJL] ADD  DEFAULT (' ') FOR [userId]
ALTER TABLE [dbo].[MIPIJL] ADD  DEFAULT ((0)) FOR [recStk]
ALTER TABLE [dbo].[MIPIJL] ADD  DEFAULT ((0)) FOR [recWip]
ALTER TABLE [dbo].[MIPIJL] ADD  DEFAULT ((0)) FOR [stk]
ALTER TABLE [dbo].[MIPIJL] ADD  DEFAULT ((0)) FOR [wip]
ALTER TABLE [dbo].[MIPIJL]  WITH CHECK ADD FOREIGN KEY([itemId])
REFERENCES [dbo].[MIITEM] ([itemId])
ALTER TABLE [dbo].[MIPIJL]  WITH CHECK ADD FOREIGN KEY([locId])
REFERENCES [dbo].[MIDLOC] ([locId])
