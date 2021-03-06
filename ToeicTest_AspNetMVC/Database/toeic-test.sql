USE [master]
GO
/****** Object:  Database [ToeicTest]    Script Date: 07/18/2021 6:32:06 PM ******/
CREATE DATABASE [ToeicTest]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ToeicTest', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ToeicTest.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ToeicTest_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ToeicTest_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ToeicTest] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ToeicTest].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ToeicTest] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ToeicTest] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ToeicTest] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ToeicTest] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ToeicTest] SET ARITHABORT OFF 
GO
ALTER DATABASE [ToeicTest] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ToeicTest] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ToeicTest] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ToeicTest] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ToeicTest] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ToeicTest] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ToeicTest] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ToeicTest] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ToeicTest] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ToeicTest] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ToeicTest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ToeicTest] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ToeicTest] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ToeicTest] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ToeicTest] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ToeicTest] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ToeicTest] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ToeicTest] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ToeicTest] SET  MULTI_USER 
GO
ALTER DATABASE [ToeicTest] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ToeicTest] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ToeicTest] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ToeicTest] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ToeicTest] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ToeicTest]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 07/18/2021 6:32:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Answer](
	[Id] [varchar](32) NOT NULL,
	[QuestionId] [varchar](32) NOT NULL,
	[Content] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Answer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lesson]    Script Date: 07/18/2021 6:32:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lesson](
	[Id] [varchar](32) NOT NULL,
	[TopicId] [varchar](32) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Lesson] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Question]    Script Date: 07/18/2021 6:32:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Question](
	[Id] [varchar](32) NOT NULL,
	[LessonId] [varchar](32) NOT NULL,
	[ImgPath] [varchar](255) NULL,
	[Content] [nvarchar](500) NULL,
	[AudioPath] [varchar](255) NULL,
	[CorrectAnswerId] [varchar](32) NOT NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Topic]    Script Date: 07/18/2021 6:32:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Topic](
	[Id] [varchar](32) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Topic] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p1-001-a', N'ets-2018-test-01-p1-001', N'(A) One of the men is writing on a document.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p1-001-b', N'ets-2018-test-01-p1-001', N'(B) One of the men is checking his watch.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p1-001-c', N'ets-2018-test-01-p1-001', N'(C) One of the men is looking in a drawer.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p1-001-d', N'ets-2018-test-01-p1-001', N'(D) One of the men is passing out pens from a box.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p1-002-a', N'ets-2018-test-01-p1-002', N'(A) They''re hanging a picture on a wall.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p1-002-b', N'ets-2018-test-01-p1-002', N'(B) They''re setting the table.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p1-002-c', N'ets-2018-test-01-p1-002', N'(C) They''re opening a window.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p1-002-d', N'ets-2018-test-01-p1-002', N'(D) They''re rearranging some furniture.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p1-003-a', N'ets-2018-test-01-p1-003', N'(A) She''s putting away a microscope.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p1-003-b', N'ets-2018-test-01-p1-003', N'(B) She''s taking off a coat.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p1-003-c', N'ets-2018-test-01-p1-003', N'(C) She''s examining some safety glasses. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p1-003-d', N'ets-2018-test-01-p1-003', N'(D) She''s using some laboratory equipment.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p1-004-a', N'ets-2018-test-01-p1-004', N'(A) A man is pushing a shopping cart.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p1-004-b', N'ets-2018-test-01-p1-004', N'(B) A man is waiting to make a purchase. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p1-004-c', N'ets-2018-test-01-p1-004', N'(C) A man is holding some merchandise. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p1-004-d', N'ets-2018-test-01-p1-004', N'(D) A man is assembling some shelves. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p1-005-a', N'ets-2018-test-01-p1-005', N'(A) Some customers are leaving a shop.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p1-005-b', N'ets-2018-test-01-p1-005', N'(B) A seating area is decorated with plants.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p1-005-c', N'ets-2018-test-01-p1-005', N'(C) A worker is repairing some light fixtures.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p1-005-d', N'ets-2018-test-01-p1-005', N'(D) A bench is being moved into a corner. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p1-006-a', N'ets-2018-test-01-p1-006', N'(A) Some suitcases are being loaded onto a bus. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p1-006-b', N'ets-2018-test-01-p1-006', N'(B) Some people are crossing an intersection.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p1-006-c', N'ets-2018-test-01-p1-006', N'(C) Some buses are parked in a garage.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p1-006-d', N'ets-2018-test-01-p1-006', N'(D) Some people are lined up at the side of a road.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-001-a', N'ets-2018-test-01-p2-001', N'(A) No, we don''t need the copies now.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-001-b', N'ets-2018-test-01-p2-001', N'(B) Yes, that''d be great. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-001-c', N'ets-2018-test-01-p2-001', N'(C) It was scheduled for ten o''clock.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-002-a', N'ets-2018-test-01-p2-002', N'(A) In Diisseldorf, Germany. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-002-b', N'ets-2018-test-01-p2-002', N'(B) Tuesday or Wednesday. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-002-c', N'ets-2018-test-01-p2-002', N'(C) Yes, I met him there. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-003-a', N'ets-2018-test-01-p2-003', N'(A) Her name was Leslie. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-003-b', N'ets-2018-test-01-p2-003', N'(B) Sorry, I can''t lend it to you. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-003-c', N'ets-2018-test-01-p2-003', N'(C) Yes, I opened an account. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-004-a', N'ets-2018-test-01-p2-004', N'(A) I didn''t expect it. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-004-b', N'ets-2018-test-01-p2-004', N'(B) Monday at the latest. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-004-c', N'ets-2018-test-01-p2-004', N'(C) On the factory floor. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-005-a', N'ets-2018-test-01-p2-005', N'(A) They were highly recommended. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-005-b', N'ets-2018-test-01-p2-005', N'(B) The shop''s on Washington Way. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-005-c', N'ets-2018-test-01-p2-005', N'(C) Twenty euros a month. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-006-a', N'ets-2018-test-01-p2-006', N'(A) You can check out now. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-006-b', N'ets-2018-test-01-p2-006', N'(B) It''s no trouble at all. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-006-c', N'ets-2018-test-01-p2-006', N'(C) At the service desk over there. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-007-a', N'ets-2018-test-01-p2-007', N'(A) In about two weeks. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-007-b', N'ets-2018-test-01-p2-007', N'(B) It''s Lisa''s shift. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-007-c', N'ets-2018-test-01-p2-007', N'(C) From the warehouse. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-008-a', N'ets-2018-test-01-p2-008', N'(A) No, I think it''s been repaired. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-008-b', N'ets-2018-test-01-p2-008', N'(B) It''s not far from here. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-008-c', N'ets-2018-test-01-p2-008', N'(C) The store closes at nine. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-009-a', N'ets-2018-test-01-p2-009', N'(A) Let me find you another one. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-009-b', N'ets-2018-test-01-p2-009', N'(B) It''s a difficult decision. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-009-c', N'ets-2018-test-01-p2-009', N'(C) There''s room for six at the table. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-010-a', N'ets-2018-test-01-p2-010', N'(A) Unless we have more paper. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-010-b', N'ets-2018-test-01-p2-010', N'(B) The publisher''s on Madison Avenue. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-010-c', N'ets-2018-test-01-p2-010', N'(C) I ordered the cheapest one. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-011-a', N'ets-2018-test-01-p2-011', N'(A) No, I didn''t have time. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-011-b', N'ets-2018-test-01-p2-011', N'(B) The winner receives fifty dollars. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-011-c', N'ets-2018-test-01-p2-011', N'(C) The Instructions are on our Web site. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-012-a', N'ets-2018-test-01-p2-012', N'(A) Yes, they''ll probably receive it soon. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-012-b', N'ets-2018-test-01-p2-012', N'(B) Thanks, that would be very helpful. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-012-c', N'ets-2018-test-01-p2-012', N'(C) When was Ms. Chen hired? ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-013-a', N'ets-2018-test-01-p2-013', N'(A) He''d prefer pizza. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-013-b', N'ets-2018-test-01-p2-013', N'(B) That should solve the problem. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-013-c', N'ets-2018-test-01-p2-013', N'(C) Well, some people are bringing their lunch. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-014-a', N'ets-2018-test-01-p2-014', N'(A) Yes, the system is working better now. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-014-b', N'ets-2018-test-01-p2-014', N'(B) A new art installation. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-014-c', N'ets-2018-test-01-p2-014', N'(C) He''s a technology consultant.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-015-a', N'ets-2018-test-01-p2-015', N'(A) For the Ritterson firm. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-015-b', N'ets-2018-test-01-p2-015', N'(B) My car''s still in the shop. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-015-c', N'ets-2018-test-01-p2-015', N'(C) They''re on my desk. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-016-a', N'ets-2018-test-01-p2-016', N'(A) You received a memo? ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-016-b', N'ets-2018-test-01-p2-016', N'(B) I''m sure they can do that. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-016-c', N'ets-2018-test-01-p2-016', N'(C) Directly to the client. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-017-a', N'ets-2018-test-01-p2-017', N'(A) Not at the moment. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-017-b', N'ets-2018-test-01-p2-017', N'(B) A small application fee. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-017-c', N'ets-2018-test-01-p2-017', N'(C) He''s an editorial assistant.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-018-a', N'ets-2018-test-01-p2-018', N'(A) Gate six is on your right. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-018-b', N'ets-2018-test-01-p2-018', N'(B) The cashier is open. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-018-c', N'ets-2018-test-01-p2-018', N'(C) There will be an extra fee. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-019-a', N'ets-2018-test-01-p2-019', N'(A) I just saw this month''s figures. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-019-b', N'ets-2018-test-01-p2-019', N'(B) I can in a few minutes. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-019-c', N'ets-2018-test-01-p2-019', N'(C) A new project.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-020-a', N'ets-2018-test-01-p2-020', N'(A) They moved to Singapore last year. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-020-b', N'ets-2018-test-01-p2-020', N'(B) A new apartment building. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-020-c', N'ets-2018-test-01-p2-020', N'(C) Room 503 is empty. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-021-a', N'ets-2018-test-01-p2-021', N'(A) After the holidays. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-021-b', N'ets-2018-test-01-p2-021', N'(B) He used colors that match our logo. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-021-c', N'ets-2018-test-01-p2-021', N'(C) Please order more tablecloths. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-022-a', N'ets-2018-test-01-p2-022', N'(A) I hope the client can push back the meeting. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-022-b', N'ets-2018-test-01-p2-022', N'(B) We really enjoyed the training. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-022-c', N'ets-2018-test-01-p2-022', N'(C) Tracks seven and eight. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-023-a', N'ets-2018-test-01-p2-023', N'(A) I''ll have a little bit. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-023-b', N'ets-2018-test-01-p2-023', N'(B) You can leave it here, thanks. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-023-c', N'ets-2018-test-01-p2-023', N'(C) What''s traffic like this time of day? ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-024-a', N'ets-2018-test-01-p2-024', N'(A) My favorite show. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-024-b', N'ets-2018-test-01-p2-024', N'(B) I didn''t know they were hiring. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-024-c', N'ets-2018-test-01-p2-024', N'(C) It''s on the application form. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-025-a', N'ets-2018-test-01-p2-025', N'(A) There was an error on page two. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-025-b', N'ets-2018-test-01-p2-025', N'(B) I suppose it''ll work. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p2-025-c', N'ets-2018-test-01-p2-025', N'(C) No, by the director''s office. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-001-a', N'ets-2018-test-01-p5-001', N'(A) recommends ')
GO
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-001-b', N'ets-2018-test-01-p5-001', N'(B) recommendation ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-001-c', N'ets-2018-test-01-p5-001', N'(C) recommended ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-001-d', N'ets-2018-test-01-p5-001', N'(D) recommending ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-002-a', N'ets-2018-test-01-p5-002', N'(A) appoint ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-002-b', N'ets-2018-test-01-p5-002', N'(B) appoints ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-002-c', N'ets-2018-test-01-p5-002', N'(C) appointed ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-002-d', N'ets-2018-test-01-p5-002', N'(D) appointment ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-003-a', N'ets-2018-test-01-p5-003', N'(A) beneficial ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-003-b', N'ets-2018-test-01-p5-003', N'(B) eligible ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-003-c', N'ets-2018-test-01-p5-003', N'(C) convenient ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-003-d', N'ets-2018-test-01-p5-003', N'(D) relevant ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-004-a', N'ets-2018-test-01-p5-004', N'(A) required ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-004-b', N'ets-2018-test-01-p5-004', N'(B) requiring ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-004-c', N'ets-2018-test-01-p5-004', N'(C) requires')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-004-d', N'ets-2018-test-01-p5-004', N'(D) will require ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-005-a', N'ets-2018-test-01-p5-005', N'(A) confirm ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-005-b', N'ets-2018-test-01-p5-005', N'(B) confirmed ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-005-c', N'ets-2018-test-01-p5-005', N'(C) confirmable ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-005-d', N'ets-2018-test-01-p5-005', N'(D) confirmation ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-006-a', N'ets-2018-test-01-p5-006', N'(A) we ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-006-b', N'ets-2018-test-01-p5-006', N'(B) us ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-006-c', N'ets-2018-test-01-p5-006', N'(C) our ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-006-d', N'ets-2018-test-01-p5-006', N'(D) ourselves ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-007-a', N'ets-2018-test-01-p5-007', N'(A) hardly ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-007-b', N'ets-2018-test-01-p5-007', N'(B) comfortably ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-007-c', N'ets-2018-test-01-p5-007', N'(C) early ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-007-d', N'ets-2018-test-01-p5-007', N'(D) eagerly ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-008-a', N'ets-2018-test-01-p5-008', N'(A) visited ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-008-b', N'ets-2018-test-01-p5-008', N'(B) returned ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-008-c', N'ets-2018-test-01-p5-008', N'(C) occurred ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-008-d', N'ets-2018-test-01-p5-008', N'(D) related ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-009-a', N'ets-2018-test-01-p5-009', N'(A) automate ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-009-b', N'ets-2018-test-01-p5-009', N'(B) automatic ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-009-c', N'ets-2018-test-01-p5-009', N'(C) automated ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-009-d', N'ets-2018-test-01-p5-009', N'(D) automatically ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-010-a', N'ets-2018-test-01-p5-010', N'(A) statement ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-010-b', N'ets-2018-test-01-p5-010', N'(B) permission ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-010-c', N'ets-2018-test-01-p5-010', N'(C) project ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-01-p5-010-d', N'ets-2018-test-01-p5-010', N'(D) ability ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-02-p1-001-a', N'ets-2018-test-02-p1-001', N'(A) He''s picking up a bag')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-02-p1-001-b', N'ets-2018-test-02-p1-001', N'(B) He''s cycling on a road.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-02-p1-001-c', N'ets-2018-test-02-p1-001', N'(C) He''s climbing some rocks.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-02-p1-001-d', N'ets-2018-test-02-p1-001', N'(D) He''s wearing a jacket.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-02-p1-002-a', N'ets-2018-test-02-p1-002', N'(A) They''re seated in a waiting area.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-02-p1-002-b', N'ets-2018-test-02-p1-002', N'(B) They''re placing books on a table. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-02-p1-002-c', N'ets-2018-test-02-p1-002', N'(C) One of the women is moving a chair. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-02-p1-002-d', N'ets-2018-test-02-p1-002', N'(D) One of the women is watering a plant. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-02-p1-003-a', N'ets-2018-test-02-p1-003', N'(A) A man is pushing a shopping cart.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-02-p1-003-b', N'ets-2018-test-02-p1-003', N'(B) A man is paying for some groceries.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-02-p1-003-c', N'ets-2018-test-02-p1-003', N'(C) Some merchandise is arranged on shelves.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-02-p1-003-d', N'ets-2018-test-02-p1-003', N'(D) Some baskets are lined up on the floor. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-02-p1-004-a', N'ets-2018-test-02-p1-004', N'(A) A woman''s working at a laptop computer.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-02-p1-004-b', N'ets-2018-test-02-p1-004', N'(B) A woman''s drinking from a bottle.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-02-p1-004-c', N'ets-2018-test-02-p1-004', N'(C) A woman''s stacking some furniture.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-02-p1-004-d', N'ets-2018-test-02-p1-004', N'(D) A woman''s putting items in a backpack. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-02-p1-005-a', N'ets-2018-test-02-p1-005', N'(A) A stage has been set up indoors.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-02-p1-005-b', N'ets-2018-test-02-p1-005', N'(B) Some people are watching a performance.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-02-p1-005-c', N'ets-2018-test-02-p1-005', N'(C) People are waiting in line for tickets.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-02-p1-005-d', N'ets-2018-test-02-p1-005', N'(D) A concert hall is unoccupied. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-02-p1-006-a', N'ets-2018-test-02-p1-006', N'(A) Some pedestrians are crossing at an intersection.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-02-p1-006-b', N'ets-2018-test-02-p1-006', N'(B) Tree branches are being cleared off a walkway.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-02-p1-006-c', N'ets-2018-test-02-p1-006', N'(C) Some vehicles are facing a low wall.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-02-p1-006-d', N'ets-2018-test-02-p1-006', N'(D) A car is exiting a parking garage. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-03-p1-001-a', N'ets-2018-test-03-p1-001', N'(A) One of the men is repairing a motorcycle.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-03-p1-001-b', N'ets-2018-test-03-p1-001', N'(B) One of the men is boarding a boat.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-03-p1-001-c', N'ets-2018-test-03-p1-001', N'(C) One of the men is driving a car.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-03-p1-001-d', N'ets-2018-test-03-p1-001', N'(D) One of the men is walking along the water. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-03-p1-002-a', N'ets-2018-test-03-p1-002', N'(A) A woman is making a pot of coffee.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-03-p1-002-b', N'ets-2018-test-03-p1-002', N'(B) A woman is wearing a pair of gloves.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-03-p1-002-c', N'ets-2018-test-03-p1-002', N'(C) A woman is stacking dishes.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-03-p1-002-d', N'ets-2018-test-03-p1-002', N'(D) A woman is carrying some trays. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-03-p1-003-a', N'ets-2018-test-03-p1-003', N'(A) Some people are watching a film.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-03-p1-003-b', N'ets-2018-test-03-p1-003', N'(B) Some people are seated in a circle.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-03-p1-003-c', N'ets-2018-test-03-p1-003', N'(C) A man is speaking to a group of people.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-03-p1-003-d', N'ets-2018-test-03-p1-003', N'(D) A woman is raising her hand. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-03-p1-004-a', N'ets-2018-test-03-p1-004', N'(A) Stones are rolling down a hill. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-03-p1-004-b', N'ets-2018-test-03-p1-004', N'(B) Some jewelry is on display. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-03-p1-004-c', N'ets-2018-test-03-p1-004', N'(C) A man is climbing some stairs. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-03-p1-004-d', N'ets-2018-test-03-p1-004', N'(D) A customer is trying on a necklace. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-03-p1-005-a', N'ets-2018-test-03-p1-005', N'(A) A laptop has been stored on a bookshelf.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-03-p1-005-b', N'ets-2018-test-03-p1-005', N'(B) A whiteboard is propped against a wall.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-03-p1-005-c', N'ets-2018-test-03-p1-005', N'(C) She''s separating some papers into piles.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-03-p1-005-d', N'ets-2018-test-03-p1-005', N'(D) She''s framing a piece of art. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-03-p1-006-a', N'ets-2018-test-03-p1-006', N'(A) A sitting area is illuminated by floor lamps.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-03-p1-006-b', N'ets-2018-test-03-p1-006', N'(B) Refreshments have been left on a table.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-03-p1-006-c', N'ets-2018-test-03-p1-006', N'(C) The armchairs are facing the paintings.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-03-p1-006-d', N'ets-2018-test-03-p1-006', N'(D) Some carpeting is being measured for installation. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-04-p1-001-a', N'ets-2018-test-04-p1-001', N'(A) A man is putting up a tent.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-04-p1-001-b', N'ets-2018-test-04-p1-001', N'(B) A man is holding a piece of wood.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-04-p1-001-c', N'ets-2018-test-04-p1-001', N'(C) A man is changing a tire. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-04-p1-001-d', N'ets-2018-test-04-p1-001', N'(D) A man is clearing off a picnic table. 
')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-04-p1-002-a', N'ets-2018-test-04-p1-002', N'(A) Some people are carrying suitcases. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-04-p1-002-b', N'ets-2018-test-04-p1-002', N'(B) Some people are waiting in a lobby.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-04-p1-002-c', N'ets-2018-test-04-p1-002', N'(C) Some people are putting on jackets.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-04-p1-002-d', N'ets-2018-test-04-p1-002', N'(D) Some people are entering a hotel. 
')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-04-p1-003-a', N'ets-2018-test-04-p1-003', N'(A) A bag has been placed on the floor.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-04-p1-003-b', N'ets-2018-test-04-p1-003', N'(B) The woman is putting a note on the bulletin board.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-04-p1-003-c', N'ets-2018-test-04-p1-003', N'(C) A newspaper has been spread out on the carpet.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-04-p1-003-d', N'ets-2018-test-04-p1-003', N'(D) The woman is arranging pillows on a sofa. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-04-p1-004-a', N'ets-2018-test-04-p1-004', N'(A) A desk is covered with papers.')
GO
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-04-p1-004-b', N'ets-2018-test-04-p1-004', N'(B) Some chairs are stacked in a corner.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-04-p1-004-c', N'ets-2018-test-04-p1-004', N'(C) Two computers are set up next to each other.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-04-p1-004-d', N'ets-2018-test-04-p1-004', N'(D) The office is being painted. 
')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-04-p1-005-a', N'ets-2018-test-04-p1-005', N'(A) Some vehicles are parked in a garage.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-04-p1-005-b', N'ets-2018-test-04-p1-005', N'(B) Some trees are being planted on a street. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-04-p1-005-c', N'ets-2018-test-04-p1-005', N'(C) A ladder is lying on the ground. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-04-p1-005-d', N'ets-2018-test-04-p1-005', N'(D) A streetlamp is being repaired. 
')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-04-p1-006-a', N'ets-2018-test-04-p1-006', N'(A) Some cyclists are riding past a building.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-04-p1-006-b', N'ets-2018-test-04-p1-006', N'(B) Some scaffolding has been erected against a stone wall.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-04-p1-006-c', N'ets-2018-test-04-p1-006', N'(C) A woman is walking under an archway.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-04-p1-006-d', N'ets-2018-test-04-p1-006', N'(D) Some bicycles have been parked along a railing. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-05-p1-001-a', N'ets-2018-test-05-p1-001', N'(A) She''s tying her shoelaces.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-05-p1-001-b', N'ets-2018-test-05-p1-001', N'(B) She''s holding a cup.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-05-p1-001-c', N'ets-2018-test-05-p1-001', N'(C) She''s reading under an umbrella.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-05-p1-001-d', N'ets-2018-test-05-p1-001', N'(D) She''s jogging through a park.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-05-p1-002-a', N'ets-2018-test-05-p1-002', N'(A) Some people are packing their suitcases.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-05-p1-002-b', N'ets-2018-test-05-p1-002', N'(B) Some people are walking along a street.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-05-p1-002-c', N'ets-2018-test-05-p1-002', N'(C) Some people are boarding an airplane.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-05-p1-002-d', N'ets-2018-test-05-p1-002', N'(D) Some people are sitting in a waiting area.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-05-p1-003-a', N'ets-2018-test-05-p1-003', N'(A) Items have been placed in a shopping cart')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-05-p1-003-b', N'ets-2018-test-05-p1-003', N'(B) Some vegetables are on display in a store.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-05-p1-003-c', N'ets-2018-test-05-p1-003', N'(C) Ceiling lights are being installed.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-05-p1-003-d', N'ets-2018-test-05-p1-003', N'(D) Flowers are being planted in pots.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-05-p1-004-a', N'ets-2018-test-05-p1-004', N'(A) There are papers piled on a chair. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-05-p1-004-b', N'ets-2018-test-05-p1-004', N'(B) There are cabinets above a computer monitor. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-05-p1-004-c', N'ets-2018-test-05-p1-004', N'(C) The man is opening a window. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-05-p1-004-d', N'ets-2018-test-05-p1-004', N'(D) The man is reaching for a telephone. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-05-p1-005-a', N'ets-2018-test-05-p1-005', N'(A) One of the women is giving a presentation.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-05-p1-005-b', N'ets-2018-test-05-p1-005', N'(B) One of the women is drinking coffee.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-05-p1-005-c', N'ets-2018-test-05-p1-005', N'(C) Some books are packed in boxes.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-05-p1-005-d', N'ets-2018-test-05-p1-005', N'(D) Some books are spread out on a counter. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-05-p1-006-a', N'ets-2018-test-05-p1-006', N'(A) Some vendors are selling merchandise.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-05-p1-006-b', N'ets-2018-test-05-p1-006', N'(B) Some people are putting up a tent. ')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-05-p1-006-c', N'ets-2018-test-05-p1-006', N'(C) Two men are shaking hands.')
INSERT [dbo].[Answer] ([Id], [QuestionId], [Content]) VALUES (N'ets-2018-test-05-p1-006-d', N'ets-2018-test-05-p1-006', N'(D) A woman is clearing off a table. 
')
INSERT [dbo].[Lesson] ([Id], [TopicId], [Name]) VALUES (N'ets-2018-test-01-p1', N'part1', N'ETS-2018 TEST-01')
INSERT [dbo].[Lesson] ([Id], [TopicId], [Name]) VALUES (N'ets-2018-test-01-p2', N'part2', N'ETS-2018 TEST-01')
INSERT [dbo].[Lesson] ([Id], [TopicId], [Name]) VALUES (N'ets-2018-test-01-p5', N'part5', N'ETS-2018 TEST-01')
INSERT [dbo].[Lesson] ([Id], [TopicId], [Name]) VALUES (N'ets-2018-test-02-p1', N'part1', N'ETS-2018 TEST-02')
INSERT [dbo].[Lesson] ([Id], [TopicId], [Name]) VALUES (N'ets-2018-test-02-p2', N'part2', N'ETS-2018 TEST-02')
INSERT [dbo].[Lesson] ([Id], [TopicId], [Name]) VALUES (N'ets-2018-test-02-p5', N'part5', N'ETS-2018 TEST-02')
INSERT [dbo].[Lesson] ([Id], [TopicId], [Name]) VALUES (N'ets-2018-test-03-p1', N'part1', N'ETS-2018 TEST-03')
INSERT [dbo].[Lesson] ([Id], [TopicId], [Name]) VALUES (N'ets-2018-test-03-p2', N'part2', N'ETS-2018 TEST-03')
INSERT [dbo].[Lesson] ([Id], [TopicId], [Name]) VALUES (N'ets-2018-test-04-p1', N'part1', N'ETS-2018 TEST-04')
INSERT [dbo].[Lesson] ([Id], [TopicId], [Name]) VALUES (N'ets-2018-test-04-p2', N'part2', N'ETS-2018 TEST-04')
INSERT [dbo].[Lesson] ([Id], [TopicId], [Name]) VALUES (N'ets-2018-test-05-p1', N'part1', N'ETS-2018 TEST-05')
INSERT [dbo].[Lesson] ([Id], [TopicId], [Name]) VALUES (N'ets-2018-test-05-p2', N'part2', N'ETS-2018 TEST-05')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p1-001', N'ets-2018-test-01-p1', N'\ETS2018\Test01\Part1\Picture\1.PNG', N' ', N'\ETS2018\Test01\Part1\Audio\1.mp3', N'ets-2018-test-01-p1-001-a')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p1-002', N'ets-2018-test-01-p1', N'\ETS2018\Test01\Part1\Picture\2.PNG', NULL, N'\ETS2018\Test01\Part1\Audio\2.mp3', N'ets-2018-test-01-p1-002-a')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p1-003', N'ets-2018-test-01-p1', N'\ETS2018\Test01\Part1\Picture\3.PNG', NULL, N'\ETS2018\Test01\Part1\Audio\3.mp3', N'ets-2018-test-01-p1-003-d')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p1-004', N'ets-2018-test-01-p1', N'\ETS2018\Test01\Part1\Picture\4.PNG', NULL, N'\ETS2018\Test01\Part1\Audio\4.mp3', N'ets-2018-test-01-p1-004-c')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p1-005', N'ets-2018-test-01-p1', N'\ETS2018\Test01\Part1\Picture\5.PNG', NULL, N'\ETS2018\Test01\Part1\Audio\5.mp3', N'ets-2018-test-01-p1-005-b')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p1-006', N'ets-2018-test-01-p1', N'\ETS2018\Test01\Part1\Picture\6.PNG', NULL, N'\ETS2018\Test01\Part1\Audio\6.mp3', N'ets-2018-test-01-p1-006-d')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p2-001', N'ets-2018-test-01-p2', NULL, N'Do you want some coffee while you wait?', N'\ETS2018\Test01\Part2\Audio\7.mp3', N'ets-2018-test-01-p2-001-b')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p2-002', N'ets-2018-test-01-p2', NULL, N'Where will the conference be held this year?', N'\ETS2018\Test01\Part2\Audio\8.mp3', N'ets-2018-test-01-p2-002-a')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p2-003', N'ets-2018-test-01-p2', NULL, N'Who did you contact at the bank for your business loan?', N'\ETS2018\Test01\Part2\Audio\9.mp3', N'ets-2018-test-01-p2-003-a')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p2-004', N'ets-2018-test-01-p2', N'', N'When is the safety inspector due to visit the factory?', N'\ETS2018\Test01\Part2\Audio\10.mp3', N'ets-2018-test-01-p2-004-b')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p2-005', N'ets-2018-test-01-p2', N'', N'What''s the membership fee at the fitness center on Oak Street?', N'\ETS2018\Test01\Part2\Audio\11.mp3', N'ets-2018-test-01-p2-005-c')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p2-006', N'ets-2018-test-01-p2', N'', N'Where can I store my luggage?', N'\ETS2018\Test01\Part2\Audio\12.mp3', N'ets-2018-test-01-p2-006-c')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p2-007', N'ets-2018-test-01-p2', N'', N'Who''s managing the production line?', N'\ETS2018\Test01\Part2\Audio\13.mp3', N'ets-2018-test-01-p2-007-b')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p2-008', N'ets-2018-test-01-p2', N'', N'Isn''t the bridge still closed?', N'\ETS2018\Test01\Part2\Audio\14.mp3', N'ets-2018-test-01-p2-008-a')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p2-009', N'ets-2018-test-01-p2', N'', N'The chair in my office is very uncomfortable.', N'\ETS2018\Test01\Part2\Audio\15.mp3', N'ets-2018-test-01-p2-009-a')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p2-010', N'ets-2018-test-01-p2', N'', N'Which printer did you buy?', N'\ETS2018\Test01\Part2\Audio\16.mp3', N'ets-2018-test-01-p2-010-c')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p2-011', N'ets-2018-test-01-p2', N'', N'How do I enter your contest?', N'\ETS2018\Test01\Part2\Audio\17.mp3', N'ets-2018-test-01-p2-011-c')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p2-012', N'ets-2018-test-01-p2', N'', N'I can make a list of the candidates for the receptionist position.', N'\ETS2018\Test01\Part2\Audio\18.mp3', N'ets-2018-test-01-p2-012-b')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p2-013', N'ets-2018-test-01-p2', N'', N'Is this enough food for everyone who''s coming?', N'\ETS2018\Test01\Part2\Audio\19.mp3', N'ets-2018-test-01-p2-013-c')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p2-014', N'ets-2018-test-01-p2', N'', N'You finished installing the updated software on all the computers, right?', N'\ETS2018\Test01\Part2\Audio\20.mp3', N'ets-2018-test-01-p2-014-a')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p2-015', N'ets-2018-test-01-p2', N'', N'Could you give me a ride to work tomorrow?', N'\ETS2018\Test01\Part2\Audio\21.mp3', N'ets-2018-test-01-p2-015-b')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p2-016', N'ets-2018-test-01-p2', N'', N'Why did the finance department send that memo? ', N'\ETS2018\Test01\Part2\Audio\22.mp3', N'ets-2018-test-01-p2-016-a')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p2-017', N'ets-2018-test-01-p2', N'', N'You accept submissions from freelance writers, don''t you?', N'\ETS2018\Test01\Part2\Audio\23.mp3', N'ets-2018-test-01-p2-017-a')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p2-018', N'ets-2018-test-01-p2', N'', N'Can I place an international call from my hotel room?', N'\ETS2018\Test01\Part2\Audio\24.mp3', N'ets-2018-test-01-p2-018-c')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p2-019', N'ets-2018-test-01-p2', N'', N'Who can show me how to set up the projector?', N'\ETS2018\Test01\Part2\Audio\25.mp3', N'ets-2018-test-01-p2-019-b')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p2-020', N'ets-2018-test-01-p2', N'', N'Let''s move to a quieter location.', N'\ETS2018\Test01\Part2\Audio\26.mp3', N'ets-2018-test-01-p2-020-c')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p2-021', N'ets-2018-test-01-p2', N'', N'How did the event planner decide on the color scheme for the banquet?', N'\ETS2018\Test01\Part2\Audio\27.mp3', N'ets-2018-test-01-p2-021-b')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p2-022', N'ets-2018-test-01-p2', N'', N'Our train will be an hour late.', N'\ETS2018\Test01\Part2\Audio\28.mp3', N'ets-2018-test-01-p2-022-a')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p2-023', N'ets-2018-test-01-p2', N'', N'Do you think we should leave now, or can we wait a bit?', N'\ETS2018\Test01\Part2\Audio\29.mp3', N'ets-2018-test-01-p2-023-c')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p2-024', N'ets-2018-test-01-p2', N'', N'I think my interview at the television station went well.', N'\ETS2018\Test01\Part2\Audio\30.mp3', N'ets-2018-test-01-p2-024-b')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p2-025', N'ets-2018-test-01-p2', N'', N'Wasn''t the budget report supposed to be finished this morning?', N'\ETS2018\Test01\Part2\Audio\31.mp3', N'ets-2018-test-01-p2-025-a')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p5-001', N'ets-2018-test-01-p5', N'', N'Dr. Braun will write______letters only for interns who master every task expected of a junior copy editor.', N'', N'ets-2018-test-01-p5-001-b')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p5-002', N'ets-2018-test-01-p5', N'', N'The________of a new chief financial officer at Veracore Industries was announced on April 6.', N'', N'ets-2018-test-01-p5-002-d')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p5-003', N'ets-2018-test-01-p5', N'', N'After a six-month probationary period, city employees are________to take vacation days.', N'', N'ets-2018-test-01-p5-003-b')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p5-004', N'ets-2018-test-01-p5', N'', N'Ms. Larensky is applying with several different agencies to obtain the permits________for the outdoor art event. ', N'', N'ets-2018-test-01-p5-004-a')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p5-005', N'ets-2018-test-01-p5', N'', N'This letter serves as________that we have received and processed your credit-card cancellation request. ', N'', N'ets-2018-test-01-p5-005-d')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p5-006', N'ets-2018-test-01-p5', N'', N'Many people at the company have industry experience, but only a handful of________can see the future importance of current trends. ', N'', N'ets-2018-test-01-p5-006-b')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p5-007', N'ets-2018-test-01-p5', N'', N'The new furniture for the conference room is scheduled to be delivered________on Tuesday. ', N'', N'ets-2018-test-01-p5-007-c')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p5-008', N'ets-2018-test-01-p5', N'', N'After working in Canada for ten years, Cha Joon has________to Seoul to plan the opening of an upscale restaurant. ', N'', N'ets-2018-test-01-p5-008-b')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p5-009', N'ets-2018-test-01-p5', N'', N'Toucan Database System is designed to perform a detailed financial analysis________', N'', N'ets-2018-test-01-p5-009-d')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-01-p5-010', N'ets-2018-test-01-p5', N'', N'The city council approved the bill to increase funding for its road improvement________. ', N'', N'ets-2018-test-01-p5-010-c')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-02-p1-001', N'ets-2018-test-02-p1', N'\ETS2018\Test02\Part1\Picture\1.PNG', NULL, N'\ETS2018\Test02\Part1\Audio\1.mp3', N'ets-2018-test-02-p1-001-d')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-02-p1-002', N'ets-2018-test-02-p1', N'\ETS2018\Test02\Part1\Picture\2.PNG', NULL, N'\ETS2018\Test02\Part1\Audio\2.mp3', N'ets-2018-test-02-p1-002-a')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-02-p1-003', N'ets-2018-test-02-p1', N'\ETS2018\Test02\Part1\Picture\3.PNG', NULL, N'\ETS2018\Test02\Part1\Audio\3.mp3', N'ets-2018-test-02-p1-003-c')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-02-p1-004', N'ets-2018-test-02-p1', N'\ETS2018\Test02\Part1\Picture\4.PNG', NULL, N'\ETS2018\Test02\Part1\Audio\4.mp3', N'ets-2018-test-02-p1-004-a')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-02-p1-005', N'ets-2018-test-02-p1', N'\ETS2018\Test02\Part1\Picture\5.PNG', NULL, N'\ETS2018\Test02\Part1\Audio\5.mp3', N'ets-2018-test-02-p1-005-b')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-02-p1-006', N'ets-2018-test-02-p1', N'\ETS2018\Test02\Part1\Picture\6.PNG', NULL, N'\ETS2018\Test02\Part1\Audio\6.mp3', N'ets-2018-test-02-p1-006-c')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-03-p1-001', N'ets-2018-test-03-p1', N'\ETS2018\Test03\Part1\Picture\1.PNG', NULL, N'\ETS2018\Test03\Part1\Audio\1.mp3', N'ets-2018-test-03-p1-001-d')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-03-p1-002', N'ets-2018-test-03-p1', N'\ETS2018\Test03\Part1\Picture\2.PNG', NULL, N'\ETS2018\Test03\Part1\Audio\2.mp3', N'ets-2018-test-03-p1-002-b')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-03-p1-003', N'ets-2018-test-03-p1', N'\ETS2018\Test03\Part1\Picture\3.PNG', NULL, N'\ETS2018\Test03\Part1\Audio\3.mp3', N'ets-2018-test-03-p1-003-c')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-03-p1-004', N'ets-2018-test-03-p1', N'\ETS2018\Test03\Part1\Picture\4.PNG', NULL, N'\ETS2018\Test03\Part1\Audio\4.mp3', N'ets-2018-test-03-p1-004-b')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-03-p1-005', N'ets-2018-test-03-p1', N'\ETS2018\Test03\Part1\Picture\5.PNG', NULL, N'\ETS2018\Test03\Part1\Audio\5.mp3', N'ets-2018-test-03-p1-005-b')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-03-p1-006', N'ets-2018-test-03-p1', N'\ETS2018\Test03\Part1\Picture\6.PNG', NULL, N'\ETS2018\Test03\Part1\Audio\6.mp3', N'ets-2018-test-03-p1-006-a')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-04-p1-001', N'ets-2018-test-04-p1', N'\ETS2018\Test04\Part1\Picture\1.PNG', NULL, N'\ETS2018\Test04\Part1\Audio\1.mp3', N'ets-2018-test-04-p1-001-b')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-04-p1-002', N'ets-2018-test-04-p1', N'\ETS2018\Test04\Part1\Picture\2.PNG', NULL, N'\ETS2018\Test04\Part1\Audio\2.mp3', N'ets-2018-test-04-p1-002-b')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-04-p1-003', N'ets-2018-test-04-p1', N'\ETS2018\Test04\Part1\Picture\3.PNG', NULL, N'\ETS2018\Test04\Part1\Audio\3.mp3', N'ets-2018-test-04-p1-003-a')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-04-p1-004', N'ets-2018-test-04-p1', N'\ETS2018\Test04\Part1\Picture\4.PNG', NULL, N'\ETS2018\Test04\Part1\Audio\4.mp3', N'ets-2018-test-04-p1-004-c')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-04-p1-005', N'ets-2018-test-04-p1', N'\ETS2018\Test04\Part1\Picture\5.PNG', NULL, N'\ETS2018\Test04\Part1\Audio\5.mp3', N'ets-2018-test-04-p1-005-d')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-04-p1-006', N'ets-2018-test-04-p1', N'\ETS2018\Test04\Part1\Picture\6.PNG', NULL, N'\ETS2018\Test04\Part1\Audio\6.mp3', N'ets-2018-test-04-p1-006-d')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-05-p1-001', N'ets-2018-test-05-p1', N'\ETS2018\Test05\Part1\Picture\1.PNG', NULL, N'\ETS2018\Test05\Part1\Audio\1.mp3', N'ets-2018-test-05-p1-001-c')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-05-p1-002', N'ets-2018-test-05-p1', N'\ETS2018\Test05\Part1\Picture\2.PNG', NULL, N'\ETS2018\Test05\Part1\Audio\2.mp3', N'ets-2018-test-05-p1-002-c')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-05-p1-003', N'ets-2018-test-05-p1', N'\ETS2018\Test05\Part1\Picture\3.PNG', NULL, N'\ETS2018\Test05\Part1\Audio\3.mp3', N'ets-2018-test-05-p1-003-b')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-05-p1-004', N'ets-2018-test-05-p1', N'\ETS2018\Test05\Part1\Picture\4.PNG', NULL, N'\ETS2018\Test05\Part1\Audio\4.mp3', N'ets-2018-test-05-p1-004-b')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-05-p1-005', N'ets-2018-test-05-p1', N'\ETS2018\Test05\Part1\Picture\5.PNG', NULL, N'\ETS2018\Test05\Part1\Audio\5.mp3', N'ets-2018-test-05-p1-005-d')
INSERT [dbo].[Question] ([Id], [LessonId], [ImgPath], [Content], [AudioPath], [CorrectAnswerId]) VALUES (N'ets-2018-test-05-p1-006', N'ets-2018-test-05-p1', N'\ETS2018\Test05\Part1\Picture\6.PNG', NULL, N'\ETS2018\Test05\Part1\Audio\6.mp3', N'ets-2018-test-05-p1-006-a')
INSERT [dbo].[Topic] ([Id], [Name]) VALUES (N'part1', N'Part 1')
INSERT [dbo].[Topic] ([Id], [Name]) VALUES (N'part2', N'Part 2')
INSERT [dbo].[Topic] ([Id], [Name]) VALUES (N'part5', N'Part 5')
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [FK_Answer_Question] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Question] ([Id])
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [FK_Answer_Question]
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_Topic] FOREIGN KEY([TopicId])
REFERENCES [dbo].[Topic] ([Id])
GO
ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_Lesson_Topic]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_Lesson] FOREIGN KEY([LessonId])
REFERENCES [dbo].[Lesson] ([Id])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_Lesson]
GO
USE [master]
GO
ALTER DATABASE [ToeicTest] SET  READ_WRITE 
GO
