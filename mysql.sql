USE [EnterpriseOne]
GO
/****** Object:  Table [dbo].[User_Table]    Script Date: 06/28/2019 10:05:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User_Table](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [varchar](50) NULL,
	[user_password] [varchar](50) NULL,
	[user_flag] [int] NULL,
 CONSTRAINT [PK_User_Table] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[User_Table] ON
INSERT [dbo].[User_Table] ([user_id], [user_name], [user_password], [user_flag]) VALUES (1, N'小明', N'123', 1)
INSERT [dbo].[User_Table] ([user_id], [user_name], [user_password], [user_flag]) VALUES (2, N'小红', N'123', 1)
INSERT [dbo].[User_Table] ([user_id], [user_name], [user_password], [user_flag]) VALUES (3, N'朱小明', N'123456', 1)
INSERT [dbo].[User_Table] ([user_id], [user_name], [user_password], [user_flag]) VALUES (4, N'张三', N'789', 1)
INSERT [dbo].[User_Table] ([user_id], [user_name], [user_password], [user_flag]) VALUES (5, N'李四', N'456', 1)
INSERT [dbo].[User_Table] ([user_id], [user_name], [user_password], [user_flag]) VALUES (6, N'王五', N'qqq', 1)
INSERT [dbo].[User_Table] ([user_id], [user_name], [user_password], [user_flag]) VALUES (7, N'张飞', N'777', 1)
INSERT [dbo].[User_Table] ([user_id], [user_name], [user_password], [user_flag]) VALUES (8, N'刘备', N'qwer', 1)
INSERT [dbo].[User_Table] ([user_id], [user_name], [user_password], [user_flag]) VALUES (9, N'刘总', N'awer', 1)
INSERT [dbo].[User_Table] ([user_id], [user_name], [user_password], [user_flag]) VALUES (10, N'马超', N'aaa', 1)
INSERT [dbo].[User_Table] ([user_id], [user_name], [user_password], [user_flag]) VALUES (11, N'曹操', N'www', 1)
INSERT [dbo].[User_Table] ([user_id], [user_name], [user_password], [user_flag]) VALUES (12, N'姜维', N'jjj', 1)
INSERT [dbo].[User_Table] ([user_id], [user_name], [user_password], [user_flag]) VALUES (13, N'姜维', N'jjj', 1)
SET IDENTITY_INSERT [dbo].[User_Table] OFF
/****** Object:  Table [dbo].[UP_Table]    Script Date: 06/28/2019 10:05:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UP_Table](
	[UP_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[person_id] [int] NULL,
	[UP_display] [int] NULL,
 CONSTRAINT [PK_UP_Table] PRIMARY KEY CLUSTERED 
(
	[UP_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UP_Table] ON
INSERT [dbo].[UP_Table] ([UP_id], [user_id], [person_id], [UP_display]) VALUES (1, 1, 3, 1)
INSERT [dbo].[UP_Table] ([UP_id], [user_id], [person_id], [UP_display]) VALUES (2, 1, 4, 1)
INSERT [dbo].[UP_Table] ([UP_id], [user_id], [person_id], [UP_display]) VALUES (3, 1, 5, 1)
INSERT [dbo].[UP_Table] ([UP_id], [user_id], [person_id], [UP_display]) VALUES (4, 1, 2, 0)
INSERT [dbo].[UP_Table] ([UP_id], [user_id], [person_id], [UP_display]) VALUES (5, 1, 1, 0)
INSERT [dbo].[UP_Table] ([UP_id], [user_id], [person_id], [UP_display]) VALUES (6, 7, 3, 1)
INSERT [dbo].[UP_Table] ([UP_id], [user_id], [person_id], [UP_display]) VALUES (7, 7, 2, 1)
INSERT [dbo].[UP_Table] ([UP_id], [user_id], [person_id], [UP_display]) VALUES (8, 7, 4, 1)
INSERT [dbo].[UP_Table] ([UP_id], [user_id], [person_id], [UP_display]) VALUES (9, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[UP_Table] OFF
/****** Object:  Table [dbo].[Schedule_Table]    Script Date: 06/28/2019 10:05:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Schedule_Table](
	[schedule_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[schedule_content] [varchar](50) NULL,
	[schedule_date] [varchar](50) NULL,
	[schedule_display] [int] NULL,
 CONSTRAINT [PK_Schedule_Table] PRIMARY KEY CLUSTERED 
(
	[schedule_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Schedule_Table] ON
INSERT [dbo].[Schedule_Table] ([schedule_id], [user_id], [schedule_content], [schedule_date], [schedule_display]) VALUES (1, 1, N'会见马云', N'2019-06-12', 1)
INSERT [dbo].[Schedule_Table] ([schedule_id], [user_id], [schedule_content], [schedule_date], [schedule_display]) VALUES (2, 1, N'会见马化腾', N'2019-06-11', 1)
INSERT [dbo].[Schedule_Table] ([schedule_id], [user_id], [schedule_content], [schedule_date], [schedule_display]) VALUES (3, 7, N'会见马超，和关羽吃饭', N'2019-06-11', 1)
INSERT [dbo].[Schedule_Table] ([schedule_id], [user_id], [schedule_content], [schedule_date], [schedule_display]) VALUES (4, 7, N'见我大哥刘备,黄巾起义', N'2019-06-27', 1)
SET IDENTITY_INSERT [dbo].[Schedule_Table] OFF
/****** Object:  Table [dbo].[Person_Table]    Script Date: 06/28/2019 10:05:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Person_Table](
	[person_id] [int] IDENTITY(1,1) NOT NULL,
	[person_name] [varchar](50) NULL,
	[person_sex] [varchar](50) NULL,
	[person_phone] [varchar](50) NULL,
	[person_mail] [varchar](50) NULL,
	[person_qq] [varchar](50) NULL,
	[person_work] [varchar](50) NULL,
	[person_address] [varchar](50) NULL,
	[person_Postal] [varchar](50) NULL,
	[person_display] [int] NULL,
 CONSTRAINT [PK_Person_Table] PRIMARY KEY CLUSTERED 
(
	[person_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Person_Table] ON
INSERT [dbo].[Person_Table] ([person_id], [person_name], [person_sex], [person_phone], [person_mail], [person_qq], [person_work], [person_address], [person_Postal], [person_display]) VALUES (1, N'吴用', N'男', N'17733475791', N'17733475791@qq.com', N'17733475791', N'水浒传', N'梁山', N'智多星001', 1)
INSERT [dbo].[Person_Table] ([person_id], [person_name], [person_sex], [person_phone], [person_mail], [person_qq], [person_work], [person_address], [person_Postal], [person_display]) VALUES (2, N'宋江', N'男', N'17733475792', N'17733475792@qq.com', N'17733475792', N'水浒传', N'梁山', N'及时雨01', 1)
INSERT [dbo].[Person_Table] ([person_id], [person_name], [person_sex], [person_phone], [person_mail], [person_qq], [person_work], [person_address], [person_Postal], [person_display]) VALUES (3, N'诸葛亮', N'男', N'17733475793', N'17733475793@qq.com', N'17733475793', N'三国演义', N'蜀国', N'卧龙01', 1)
INSERT [dbo].[Person_Table] ([person_id], [person_name], [person_sex], [person_phone], [person_mail], [person_qq], [person_work], [person_address], [person_Postal], [person_display]) VALUES (4, N'武松', N'男', N'17733475797', N'17733475797@qq.com', N'17733475797', N'水浒传', N'梁山', N'行者003', 1)
INSERT [dbo].[Person_Table] ([person_id], [person_name], [person_sex], [person_phone], [person_mail], [person_qq], [person_work], [person_address], [person_Postal], [person_display]) VALUES (5, N'孙悟空', N'男', N'17733475796', N'17733475796@qq.com', N'17733475796', N'西游记', N'花果山', N'弼马温007', 1)
SET IDENTITY_INSERT [dbo].[Person_Table] OFF
/****** Object:  Table [dbo].[Notice_Table]    Script Date: 06/28/2019 10:05:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Notice_Table](
	[notice_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[notice_title] [varchar](50) NULL,
	[notice_content] [varchar](50) NULL,
	[notice_time] [varchar](50) NULL,
	[notice_display] [int] NULL,
 CONSTRAINT [PK_Notice_Table] PRIMARY KEY CLUSTERED 
(
	[notice_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Notice_Table] ON
INSERT [dbo].[Notice_Table] ([notice_id], [user_id], [notice_title], [notice_content], [notice_time], [notice_display]) VALUES (1, 7, N'桃园结义', N'我们一起结义吧', N'2019-02-14', 1)
INSERT [dbo].[Notice_Table] ([notice_id], [user_id], [notice_title], [notice_content], [notice_time], [notice_display]) VALUES (2, 1, N'聚餐', N'我的生日聚会', N'2019-06-05', 1)
INSERT [dbo].[Notice_Table] ([notice_id], [user_id], [notice_title], [notice_content], [notice_time], [notice_display]) VALUES (3, 1, N'无人机座谈会', N'讲述大疆无人机', N'2019-06-24', 1)
SET IDENTITY_INSERT [dbo].[Notice_Table] OFF
/****** Object:  Table [dbo].[News_Table]    Script Date: 06/28/2019 10:05:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[News_Table](
	[news_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[person_id] [int] NULL,
	[news_content] [varchar](50) NULL,
	[news_time] [varchar](50) NULL,
	[news_read] [int] NULL,
 CONSTRAINT [PK_News_Table] PRIMARY KEY CLUSTERED 
(
	[news_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[News_Table] ON
INSERT [dbo].[News_Table] ([news_id], [user_id], [person_id], [news_content], [news_time], [news_read]) VALUES (1, 7, 2, N'你杀了阎婆惜', N'2019-06-03', 1)
INSERT [dbo].[News_Table] ([news_id], [user_id], [person_id], [news_content], [news_time], [news_read]) VALUES (2, 7, 3, N'三顾茅庐请了你这个大人才', N'2019-01-08', 1)
INSERT [dbo].[News_Table] ([news_id], [user_id], [person_id], [news_content], [news_time], [news_read]) VALUES (3, 1, 5, N'你是弼马温嘛', N'2019-06-03', 1)
INSERT [dbo].[News_Table] ([news_id], [user_id], [person_id], [news_content], [news_time], [news_read]) VALUES (4, 1, 1, N'你是吴用还是无用？', N'2019-06-01', 1)
INSERT [dbo].[News_Table] ([news_id], [user_id], [person_id], [news_content], [news_time], [news_read]) VALUES (5, 1, 4, N'你大哥被人绿了', N'0700-02-12', 0)
SET IDENTITY_INSERT [dbo].[News_Table] OFF
/****** Object:  Table [dbo].[Meeting_Table]    Script Date: 06/28/2019 10:05:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Meeting_Table](
	[meeting_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[meeting_name] [varchar](50) NULL,
	[meeting_starttime] [varchar](50) NULL,
	[meeting_endtime] [varchar](50) NULL,
	[meeting_address] [varchar](50) NULL,
	[meeting_title] [varchar](50) NULL,
	[meeting_content] [varchar](50) NULL,
	[meeting_display] [int] NULL,
 CONSTRAINT [PK_Meeting_Table] PRIMARY KEY CLUSTERED 
(
	[meeting_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log_Table]    Script Date: 06/28/2019 10:05:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log_Table](
	[log_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[log_date] [varchar](50) NULL,
	[log_title] [varchar](50) NULL,
	[log_content] [varchar](50) NULL,
	[log_time] [varchar](50) NULL,
	[log_display] [int] NULL,
 CONSTRAINT [PK_Log_Table] PRIMARY KEY CLUSTERED 
(
	[log_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Log_Table] ON
INSERT [dbo].[Log_Table] ([log_id], [user_id], [log_date], [log_title], [log_content], [log_time], [log_display]) VALUES (1, 7, N'2019-05-28', N'吃饭', N'5斤牛肉，10斤米酒', N'2019-06-27 14:07:03', 1)
INSERT [dbo].[Log_Table] ([log_id], [user_id], [log_date], [log_title], [log_content], [log_time], [log_display]) VALUES (2, 7, N'2019-06-26', N'打架', N'长坂坡，谁敢与我决一死战', N'2019-06-27 14:40:55', 1)
INSERT [dbo].[Log_Table] ([log_id], [user_id], [log_date], [log_title], [log_content], [log_time], [log_display]) VALUES (3, 7, N'2019-05-28', N'作战', N'我要生擒曹贼', N'2019-06-27 15:28:46', 1)
SET IDENTITY_INSERT [dbo].[Log_Table] OFF
/****** Object:  Default [DF_Log_Table_log_display]    Script Date: 06/28/2019 10:05:29 ******/
ALTER TABLE [dbo].[Log_Table] ADD  CONSTRAINT [DF_Log_Table_log_display]  DEFAULT ((1)) FOR [log_display]
GO
/****** Object:  Default [DF_Meeting_Table_meeting_display]    Script Date: 06/28/2019 10:05:29 ******/
ALTER TABLE [dbo].[Meeting_Table] ADD  CONSTRAINT [DF_Meeting_Table_meeting_display]  DEFAULT ((1)) FOR [meeting_display]
GO
/****** Object:  Default [DF_News_Table_news_read]    Script Date: 06/28/2019 10:05:29 ******/
ALTER TABLE [dbo].[News_Table] ADD  CONSTRAINT [DF_News_Table_news_read]  DEFAULT ((1)) FOR [news_read]
GO
/****** Object:  Default [DF_Notice_Table_notice_display]    Script Date: 06/28/2019 10:05:29 ******/
ALTER TABLE [dbo].[Notice_Table] ADD  CONSTRAINT [DF_Notice_Table_notice_display]  DEFAULT ((1)) FOR [notice_display]
GO
/****** Object:  Default [DF_Person_Table_person_display]    Script Date: 06/28/2019 10:05:29 ******/
ALTER TABLE [dbo].[Person_Table] ADD  CONSTRAINT [DF_Person_Table_person_display]  DEFAULT ((1)) FOR [person_display]
GO
/****** Object:  Default [DF_Schedule_Table_schedule_display]    Script Date: 06/28/2019 10:05:29 ******/
ALTER TABLE [dbo].[Schedule_Table] ADD  CONSTRAINT [DF_Schedule_Table_schedule_display]  DEFAULT ((1)) FOR [schedule_display]
GO
/****** Object:  Default [DF_UP_Table_UP_display]    Script Date: 06/28/2019 10:05:29 ******/
ALTER TABLE [dbo].[UP_Table] ADD  CONSTRAINT [DF_UP_Table_UP_display]  DEFAULT ((1)) FOR [UP_display]
GO
/****** Object:  Default [DF_User_Table_user_flag]    Script Date: 06/28/2019 10:05:29 ******/
ALTER TABLE [dbo].[User_Table] ADD  CONSTRAINT [DF_User_Table_user_flag]  DEFAULT ((1)) FOR [user_flag]
GO
