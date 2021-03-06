USE [master]
GO
/****** Object:  Database [dbnetflix]    Script Date: 04/07/2021 22:50:06 ******/
CREATE DATABASE [dbnetflix]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbnetflix', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\dbnetflix.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dbnetflix_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\dbnetflix_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [dbnetflix] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbnetflix].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbnetflix] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbnetflix] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbnetflix] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbnetflix] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbnetflix] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbnetflix] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbnetflix] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbnetflix] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbnetflix] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbnetflix] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbnetflix] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbnetflix] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbnetflix] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbnetflix] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbnetflix] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbnetflix] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbnetflix] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbnetflix] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbnetflix] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbnetflix] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbnetflix] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbnetflix] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbnetflix] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dbnetflix] SET  MULTI_USER 
GO
ALTER DATABASE [dbnetflix] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbnetflix] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbnetflix] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbnetflix] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dbnetflix] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [dbnetflix] SET QUERY_STORE = OFF
GO
USE [dbnetflix]
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 04/07/2021 22:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoria](
	[categoriaId] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](250) NOT NULL,
 CONSTRAINT [PK_categoria] PRIMARY KEY CLUSTERED 
(
	[categoriaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[filmeSerie]    Script Date: 04/07/2021 22:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[filmeSerie](
	[filmeSerieId] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](250) NOT NULL,
	[dataLancamento] [date] NOT NULL,
	[sinopse] [varchar](300) NOT NULL,
	[duracao] [int] NOT NULL,
	[tipo] [varchar](1) NOT NULL,
	[categoriaId] [int] NOT NULL,
 CONSTRAINT [PK_filmeSeries] PRIMARY KEY CLUSTERED 
(
	[filmeSerieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pagamento]    Script Date: 04/07/2021 22:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pagamento](
	[pagamentoId] [int] IDENTITY(1,1) NOT NULL,
	[dataPagamento] [date] NULL,
	[status] [bit] NOT NULL,
	[usuarioId] [int] NOT NULL,
 CONSTRAINT [PK_pagamento] PRIMARY KEY CLUSTERED 
(
	[pagamentoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[status]    Script Date: 04/07/2021 22:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status](
	[statusId] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](50) NOT NULL,
 CONSTRAINT [PK_status] PRIMARY KEY CLUSTERED 
(
	[statusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 04/07/2021 22:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[usuarioId] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](150) NOT NULL,
	[email] [varchar](250) NOT NULL,
	[senha] [varchar](50) NOT NULL,
	[telefone] [varchar](50) NOT NULL,
	[cpf] [varchar](11) NOT NULL,
	[numeroCartao] [varchar](50) NOT NULL,
	[titularCartao] [varchar](150) NOT NULL,
	[codigoCartao] [int] NOT NULL,
	[validade] [date] NOT NULL,
	[tipoCartao] [varchar](1) NOT NULL,
	[statusConta] [bit] NOT NULL,
	[dataCadastro] [date] NOT NULL,
	[dataAtualizacao] [date] NULL,
	[statusId] [int] NOT NULL,
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[usuarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[visualizacao]    Script Date: 04/07/2021 22:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[visualizacao](
	[visualizacaoId] [int] IDENTITY(1,1) NOT NULL,
	[dataVisualizacao] [date] NOT NULL,
	[filmeSerieId] [int] NOT NULL,
	[usuarioId] [int] NOT NULL,
 CONSTRAINT [PK_visualizacao] PRIMARY KEY CLUSTERED 
(
	[visualizacaoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[categoria] ON 

INSERT [dbo].[categoria] ([categoriaId], [nome]) VALUES (1, N'Terror')
INSERT [dbo].[categoria] ([categoriaId], [nome]) VALUES (2, N'Comedia')
INSERT [dbo].[categoria] ([categoriaId], [nome]) VALUES (3, N'Ação')
SET IDENTITY_INSERT [dbo].[categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[filmeSerie] ON 

INSERT [dbo].[filmeSerie] ([filmeSerieId], [nome], [dataLancamento], [sinopse], [duracao], [tipo], [categoriaId]) VALUES (1, N'Madrugada dos Mortos', CAST(N'2021-07-01' AS Date), N'Muitos Mortos andando por ai', 102, N'F', 1)
INSERT [dbo].[filmeSerie] ([filmeSerieId], [nome], [dataLancamento], [sinopse], [duracao], [tipo], [categoriaId]) VALUES (2, N'The Office - S01E01', CAST(N'2021-06-20' AS Date), N'Michael Scott faz suas traquinagem', 20, N'S', 2)
INSERT [dbo].[filmeSerie] ([filmeSerieId], [nome], [dataLancamento], [sinopse], [duracao], [tipo], [categoriaId]) VALUES (3, N'Duro de Matar', CAST(N'2021-07-05' AS Date), N'John Mcclane matando todo mundo', 122, N'F', 3)
INSERT [dbo].[filmeSerie] ([filmeSerieId], [nome], [dataLancamento], [sinopse], [duracao], [tipo], [categoriaId]) VALUES (4, N'Invocacao do Mal', CAST(N'2021-07-05' AS Date), N'Um filme do capeta', 125, N'F', 1)
SET IDENTITY_INSERT [dbo].[filmeSerie] OFF
GO
SET IDENTITY_INSERT [dbo].[pagamento] ON 

INSERT [dbo].[pagamento] ([pagamentoId], [dataPagamento], [status], [usuarioId]) VALUES (1, CAST(N'2021-04-04' AS Date), 1, 1)
INSERT [dbo].[pagamento] ([pagamentoId], [dataPagamento], [status], [usuarioId]) VALUES (2, CAST(N'2021-05-04' AS Date), 1, 1)
INSERT [dbo].[pagamento] ([pagamentoId], [dataPagamento], [status], [usuarioId]) VALUES (3, CAST(N'2021-06-04' AS Date), 1, 1)
INSERT [dbo].[pagamento] ([pagamentoId], [dataPagamento], [status], [usuarioId]) VALUES (4, CAST(N'2021-07-04' AS Date), 1, 1)
INSERT [dbo].[pagamento] ([pagamentoId], [dataPagamento], [status], [usuarioId]) VALUES (5, CAST(N'2021-01-04' AS Date), 1, 2)
INSERT [dbo].[pagamento] ([pagamentoId], [dataPagamento], [status], [usuarioId]) VALUES (6, CAST(N'2021-02-04' AS Date), 1, 2)
INSERT [dbo].[pagamento] ([pagamentoId], [dataPagamento], [status], [usuarioId]) VALUES (7, CAST(N'2021-03-04' AS Date), 1, 2)
INSERT [dbo].[pagamento] ([pagamentoId], [dataPagamento], [status], [usuarioId]) VALUES (8, CAST(N'2021-04-04' AS Date), 1, 2)
INSERT [dbo].[pagamento] ([pagamentoId], [dataPagamento], [status], [usuarioId]) VALUES (9, CAST(N'2021-05-04' AS Date), 1, 2)
INSERT [dbo].[pagamento] ([pagamentoId], [dataPagamento], [status], [usuarioId]) VALUES (10, CAST(N'2021-06-04' AS Date), 1, 2)
INSERT [dbo].[pagamento] ([pagamentoId], [dataPagamento], [status], [usuarioId]) VALUES (11, CAST(N'2021-07-04' AS Date), 0, 2)
INSERT [dbo].[pagamento] ([pagamentoId], [dataPagamento], [status], [usuarioId]) VALUES (12, CAST(N'2021-02-02' AS Date), 1, 3)
INSERT [dbo].[pagamento] ([pagamentoId], [dataPagamento], [status], [usuarioId]) VALUES (13, CAST(N'2021-03-02' AS Date), 1, 3)
INSERT [dbo].[pagamento] ([pagamentoId], [dataPagamento], [status], [usuarioId]) VALUES (14, CAST(N'2021-04-02' AS Date), 1, 3)
INSERT [dbo].[pagamento] ([pagamentoId], [dataPagamento], [status], [usuarioId]) VALUES (15, CAST(N'2021-05-02' AS Date), 1, 3)
INSERT [dbo].[pagamento] ([pagamentoId], [dataPagamento], [status], [usuarioId]) VALUES (16, CAST(N'2021-06-02' AS Date), 0, 3)
INSERT [dbo].[pagamento] ([pagamentoId], [dataPagamento], [status], [usuarioId]) VALUES (17, CAST(N'2021-07-02' AS Date), 0, 3)
SET IDENTITY_INSERT [dbo].[pagamento] OFF
GO
SET IDENTITY_INSERT [dbo].[status] ON 

INSERT [dbo].[status] ([statusId], [descricao]) VALUES (1, N'online')
INSERT [dbo].[status] ([statusId], [descricao]) VALUES (2, N'offline')
INSERT [dbo].[status] ([statusId], [descricao]) VALUES (3, N'assistindo')
SET IDENTITY_INSERT [dbo].[status] OFF
GO
SET IDENTITY_INSERT [dbo].[usuario] ON 

INSERT [dbo].[usuario] ([usuarioId], [nome], [email], [senha], [telefone], [cpf], [numeroCartao], [titularCartao], [codigoCartao], [validade], [tipoCartao], [statusConta], [dataCadastro], [dataAtualizacao], [statusId]) VALUES (1, N'Joao das Coves', N'joao@gmail.com', N'ALKJS32423', N'(67) 99202-8566', N'04520165499', N'4555 5656 4556 5656', N'Mae do Joao', 146, CAST(N'2027-07-01' AS Date), N'C', 1, CAST(N'2021-07-04' AS Date), NULL, 1)
INSERT [dbo].[usuario] ([usuarioId], [nome], [email], [senha], [telefone], [cpf], [numeroCartao], [titularCartao], [codigoCartao], [validade], [tipoCartao], [statusConta], [dataCadastro], [dataAtualizacao], [statusId]) VALUES (2, N'Maria das Rosas', N'maria@gmail.com', N'JKHD2-', N'(67) 98402-8555', N'04535865455', N'4555 5656 4556 1234', N'Maria Rosas', 123, CAST(N'2026-05-01' AS Date), N'D', 0, CAST(N'2021-01-04' AS Date), CAST(N'2021-07-01' AS Date), 2)
INSERT [dbo].[usuario] ([usuarioId], [nome], [email], [senha], [telefone], [cpf], [numeroCartao], [titularCartao], [codigoCartao], [validade], [tipoCartao], [statusConta], [dataCadastro], [dataAtualizacao], [statusId]) VALUES (3, N'Craudio das Neves', N'craudio@gmail.com', N'JHFGAJ123', N'(67) 99202-9876', N'04520165400', N'4555 5656 4556 9874', N'Tia do Craudio', 543, CAST(N'2029-04-01' AS Date), N'C', 1, CAST(N'2021-02-02' AS Date), CAST(N'2021-07-05' AS Date), 3)
SET IDENTITY_INSERT [dbo].[usuario] OFF
GO
SET IDENTITY_INSERT [dbo].[visualizacao] ON 

INSERT [dbo].[visualizacao] ([visualizacaoId], [dataVisualizacao], [filmeSerieId], [usuarioId]) VALUES (1, CAST(N'2021-01-13' AS Date), 1, 2)
INSERT [dbo].[visualizacao] ([visualizacaoId], [dataVisualizacao], [filmeSerieId], [usuarioId]) VALUES (2, CAST(N'2021-02-13' AS Date), 2, 2)
INSERT [dbo].[visualizacao] ([visualizacaoId], [dataVisualizacao], [filmeSerieId], [usuarioId]) VALUES (3, CAST(N'2021-03-13' AS Date), 3, 2)
INSERT [dbo].[visualizacao] ([visualizacaoId], [dataVisualizacao], [filmeSerieId], [usuarioId]) VALUES (4, CAST(N'2021-04-14' AS Date), 2, 2)
INSERT [dbo].[visualizacao] ([visualizacaoId], [dataVisualizacao], [filmeSerieId], [usuarioId]) VALUES (5, CAST(N'2021-04-15' AS Date), 3, 2)
INSERT [dbo].[visualizacao] ([visualizacaoId], [dataVisualizacao], [filmeSerieId], [usuarioId]) VALUES (6, CAST(N'2021-07-04' AS Date), 1, 1)
INSERT [dbo].[visualizacao] ([visualizacaoId], [dataVisualizacao], [filmeSerieId], [usuarioId]) VALUES (7, CAST(N'2021-07-04' AS Date), 2, 1)
INSERT [dbo].[visualizacao] ([visualizacaoId], [dataVisualizacao], [filmeSerieId], [usuarioId]) VALUES (8, CAST(N'2021-07-04' AS Date), 3, 1)
INSERT [dbo].[visualizacao] ([visualizacaoId], [dataVisualizacao], [filmeSerieId], [usuarioId]) VALUES (9, CAST(N'2021-02-02' AS Date), 1, 3)
INSERT [dbo].[visualizacao] ([visualizacaoId], [dataVisualizacao], [filmeSerieId], [usuarioId]) VALUES (10, CAST(N'2021-02-02' AS Date), 2, 3)
INSERT [dbo].[visualizacao] ([visualizacaoId], [dataVisualizacao], [filmeSerieId], [usuarioId]) VALUES (11, CAST(N'2021-02-02' AS Date), 3, 3)
INSERT [dbo].[visualizacao] ([visualizacaoId], [dataVisualizacao], [filmeSerieId], [usuarioId]) VALUES (12, CAST(N'2021-02-02' AS Date), 2, 3)
INSERT [dbo].[visualizacao] ([visualizacaoId], [dataVisualizacao], [filmeSerieId], [usuarioId]) VALUES (13, CAST(N'2021-02-02' AS Date), 3, 3)
INSERT [dbo].[visualizacao] ([visualizacaoId], [dataVisualizacao], [filmeSerieId], [usuarioId]) VALUES (14, CAST(N'2021-03-02' AS Date), 2, 3)
INSERT [dbo].[visualizacao] ([visualizacaoId], [dataVisualizacao], [filmeSerieId], [usuarioId]) VALUES (15, CAST(N'2021-03-02' AS Date), 3, 3)
INSERT [dbo].[visualizacao] ([visualizacaoId], [dataVisualizacao], [filmeSerieId], [usuarioId]) VALUES (16, CAST(N'2021-04-02' AS Date), 2, 3)
INSERT [dbo].[visualizacao] ([visualizacaoId], [dataVisualizacao], [filmeSerieId], [usuarioId]) VALUES (17, CAST(N'2021-04-02' AS Date), 3, 3)
INSERT [dbo].[visualizacao] ([visualizacaoId], [dataVisualizacao], [filmeSerieId], [usuarioId]) VALUES (18, CAST(N'2021-05-02' AS Date), 3, 3)
INSERT [dbo].[visualizacao] ([visualizacaoId], [dataVisualizacao], [filmeSerieId], [usuarioId]) VALUES (19, CAST(N'2021-06-02' AS Date), 3, 3)
SET IDENTITY_INSERT [dbo].[visualizacao] OFF
GO
ALTER TABLE [dbo].[filmeSerie]  WITH CHECK ADD  CONSTRAINT [FK_filmeSerie_categoria] FOREIGN KEY([categoriaId])
REFERENCES [dbo].[categoria] ([categoriaId])
GO
ALTER TABLE [dbo].[filmeSerie] CHECK CONSTRAINT [FK_filmeSerie_categoria]
GO
ALTER TABLE [dbo].[pagamento]  WITH CHECK ADD  CONSTRAINT [FK_pagamento_usuario] FOREIGN KEY([usuarioId])
REFERENCES [dbo].[usuario] ([usuarioId])
GO
ALTER TABLE [dbo].[pagamento] CHECK CONSTRAINT [FK_pagamento_usuario]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_status] FOREIGN KEY([statusId])
REFERENCES [dbo].[status] ([statusId])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_usuario_status]
GO
ALTER TABLE [dbo].[visualizacao]  WITH CHECK ADD  CONSTRAINT [FK_visualizacao_filmeSerie] FOREIGN KEY([filmeSerieId])
REFERENCES [dbo].[filmeSerie] ([filmeSerieId])
GO
ALTER TABLE [dbo].[visualizacao] CHECK CONSTRAINT [FK_visualizacao_filmeSerie]
GO
ALTER TABLE [dbo].[visualizacao]  WITH CHECK ADD  CONSTRAINT [FK_visualizacao_usuario] FOREIGN KEY([usuarioId])
REFERENCES [dbo].[usuario] ([usuarioId])
GO
ALTER TABLE [dbo].[visualizacao] CHECK CONSTRAINT [FK_visualizacao_usuario]
GO
USE [master]
GO
ALTER DATABASE [dbnetflix] SET  READ_WRITE 
GO
