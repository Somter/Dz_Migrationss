USE [MigrationsDb]
GO

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Games]    Script Date: 25.02.2025 18:53:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Games](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Publisher] [nvarchar](max) NOT NULL,
	[Genre] [nvarchar](max) NOT NULL,
	[ReleaseDate] [datetime2](7) NOT NULL,
	[CopiesSold] [int] NOT NULL,
	[GameMode] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Games] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250225165228_GamesDB', N'9.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250225174241_AddGameModeAndCopiesSold', N'9.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250225174700_AlterGameModeAndCopiesSold', N'9.0.2')
GO
SET IDENTITY_INSERT [dbo].[Games] ON 

INSERT [dbo].[Games] ([Id], [Title], [Publisher], [Genre], [ReleaseDate], [CopiesSold], [GameMode]) 
VALUES (1, N'Elden Ring', N'FromSoftware', N'RPG', CAST(N'2022-02-25T00:00:00.0000000' AS DateTime2), 20000000, N'Singleplayer')

INSERT [dbo].[Games] ([Id], [Title], [Publisher], [Genre], [ReleaseDate], [CopiesSold], [GameMode]) 
VALUES (2, N'Call of Duty: Warzone', N'Activision', N'Shooter', CAST(N'2020-03-10T00:00:00.0000000' AS DateTime2), 125000000, N'Multiplayer')

INSERT [dbo].[Games] ([Id], [Title], [Publisher], [Genre], [ReleaseDate], [CopiesSold], [GameMode]) 
VALUES (3, N'Terraria', N'Re-Logic', N'Sandbox', CAST(N'2011-05-16T00:00:00.0000000' AS DateTime2), 44000000, N'Singleplayer')

SET IDENTITY_INSERT [dbo].[Games] OFF
GO
ALTER TABLE [dbo].[Games] ADD  DEFAULT ((0)) FOR [CopiesSold]
GO
ALTER TABLE [dbo].[Games] ADD  DEFAULT (N'Singleplayer') FOR [GameMode]
GO
