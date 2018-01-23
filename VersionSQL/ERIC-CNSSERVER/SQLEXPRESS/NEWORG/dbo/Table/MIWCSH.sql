/****** Object:  Table [dbo].[MIWCSH]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIWCSH](
	[shiftId] [nvarchar](12) NOT NULL,
	[descr] [nvarchar](60) NOT NULL,
	[dflt] [bit] NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIWCSH_KEY_0] PRIMARY KEY CLUSTERED 
(
	[shiftId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MIWCSH] ADD  DEFAULT (' ') FOR [shiftId]
ALTER TABLE [dbo].[MIWCSH] ADD  DEFAULT (' ') FOR [descr]
ALTER TABLE [dbo].[MIWCSH] ADD  DEFAULT ((0)) FOR [dflt]
