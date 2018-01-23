/****** Object:  Table [dbo].[MIRESTRT]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MIRESTRT](
	[orgId] [nvarchar](12) NOT NULL,
	[processId] [nvarchar](12) NOT NULL,
	[userId] [nvarchar](8) NOT NULL,
	[unqId] [int] NOT NULL,
	[logTranDt] [datetime] NULL,
	[logEntry] [int] NOT NULL,
	[marker] [int] NOT NULL,
	[record] [varchar](7000) NOT NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MIRESTRT_KEY_0] PRIMARY KEY CLUSTERED 
(
	[orgId] ASC,
	[processId] ASC,
	[userId] ASC,
	[unqId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MIRESTRT] ADD  DEFAULT (' ') FOR [processId]
ALTER TABLE [dbo].[MIRESTRT] ADD  DEFAULT ((0)) FOR [unqId]
ALTER TABLE [dbo].[MIRESTRT] ADD  DEFAULT ((0)) FOR [logEntry]
ALTER TABLE [dbo].[MIRESTRT] ADD  DEFAULT ((0)) FOR [marker]
ALTER TABLE [dbo].[MIRESTRT] ADD  DEFAULT (' ') FOR [record]
ALTER TABLE [dbo].[MIRESTRT]  WITH CHECK ADD FOREIGN KEY([orgId])
REFERENCES [dbo].[MIORGS] ([orgId])
ALTER TABLE [dbo].[MIRESTRT]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[MIUSER] ([userId])
