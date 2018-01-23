/****** Object:  Table [dbo].[MITXGRP]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MITXGRP](
	[groupId] [nvarchar](12) NOT NULL,
	[transType] [smallint] NOT NULL,
	[descr] [nvarchar](60) NOT NULL,
	[srcCur] [nvarchar](3) NULL,
	[auth1] [nvarchar](12) NULL,
	[auth2] [nvarchar](12) NULL,
	[auth3] [nvarchar](12) NULL,
	[auth4] [nvarchar](12) NULL,
	[auth5] [nvarchar](12) NULL,
	[taxable1] [bit] NOT NULL,
	[taxable2] [bit] NOT NULL,
	[taxable3] [bit] NOT NULL,
	[taxable4] [bit] NOT NULL,
	[taxable5] [bit] NOT NULL,
	[calcMethod] [smallint] NOT NULL,
	[lstMaintDt] [datetime] NULL,
	[surTax1] [bit] NOT NULL,
	[surTax2] [bit] NOT NULL,
	[surTax3] [bit] NOT NULL,
	[surTax4] [bit] NOT NULL,
	[surTax5] [bit] NOT NULL,
	[surAuth1] [nvarchar](12) NULL,
	[surAuth2] [nvarchar](12) NULL,
	[surAuth3] [nvarchar](12) NULL,
	[surAuth4] [nvarchar](12) NULL,
	[surAuth5] [nvarchar](12) NULL,
	[rowVer] [timestamp] NOT NULL,
 CONSTRAINT [PK_MITXGRP_KEY_0] PRIMARY KEY CLUSTERED 
(
	[groupId] ASC,
	[transType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[MITXGRP] ADD  DEFAULT (' ') FOR [groupId]
ALTER TABLE [dbo].[MITXGRP] ADD  DEFAULT ((0)) FOR [transType]
ALTER TABLE [dbo].[MITXGRP] ADD  DEFAULT (' ') FOR [descr]
ALTER TABLE [dbo].[MITXGRP] ADD  DEFAULT ((0)) FOR [taxable1]
ALTER TABLE [dbo].[MITXGRP] ADD  DEFAULT ((0)) FOR [taxable2]
ALTER TABLE [dbo].[MITXGRP] ADD  DEFAULT ((0)) FOR [taxable3]
ALTER TABLE [dbo].[MITXGRP] ADD  DEFAULT ((0)) FOR [taxable4]
ALTER TABLE [dbo].[MITXGRP] ADD  DEFAULT ((0)) FOR [taxable5]
ALTER TABLE [dbo].[MITXGRP] ADD  DEFAULT ((0)) FOR [calcMethod]
ALTER TABLE [dbo].[MITXGRP] ADD  DEFAULT ((0)) FOR [surTax1]
ALTER TABLE [dbo].[MITXGRP] ADD  DEFAULT ((0)) FOR [surTax2]
ALTER TABLE [dbo].[MITXGRP] ADD  DEFAULT ((0)) FOR [surTax3]
ALTER TABLE [dbo].[MITXGRP] ADD  DEFAULT ((0)) FOR [surTax4]
ALTER TABLE [dbo].[MITXGRP] ADD  DEFAULT ((0)) FOR [surTax5]
ALTER TABLE [dbo].[MITXGRP]  WITH CHECK ADD FOREIGN KEY([auth1])
REFERENCES [dbo].[MITXAUTH] ([auth])
ALTER TABLE [dbo].[MITXGRP]  WITH CHECK ADD FOREIGN KEY([auth2])
REFERENCES [dbo].[MITXAUTH] ([auth])
ALTER TABLE [dbo].[MITXGRP]  WITH CHECK ADD FOREIGN KEY([auth3])
REFERENCES [dbo].[MITXAUTH] ([auth])
ALTER TABLE [dbo].[MITXGRP]  WITH CHECK ADD FOREIGN KEY([auth4])
REFERENCES [dbo].[MITXAUTH] ([auth])
ALTER TABLE [dbo].[MITXGRP]  WITH CHECK ADD FOREIGN KEY([auth5])
REFERENCES [dbo].[MITXAUTH] ([auth])
ALTER TABLE [dbo].[MITXGRP]  WITH CHECK ADD FOREIGN KEY([srcCur])
REFERENCES [dbo].[MICCD] ([curId])
ALTER TABLE [dbo].[MITXGRP]  WITH CHECK ADD FOREIGN KEY([surAuth1])
REFERENCES [dbo].[MITXAUTH] ([auth])
ALTER TABLE [dbo].[MITXGRP]  WITH CHECK ADD FOREIGN KEY([surAuth2])
REFERENCES [dbo].[MITXAUTH] ([auth])
ALTER TABLE [dbo].[MITXGRP]  WITH CHECK ADD FOREIGN KEY([surAuth3])
REFERENCES [dbo].[MITXAUTH] ([auth])
ALTER TABLE [dbo].[MITXGRP]  WITH CHECK ADD FOREIGN KEY([surAuth4])
REFERENCES [dbo].[MITXAUTH] ([auth])
ALTER TABLE [dbo].[MITXGRP]  WITH CHECK ADD FOREIGN KEY([surAuth5])
REFERENCES [dbo].[MITXAUTH] ([auth])
