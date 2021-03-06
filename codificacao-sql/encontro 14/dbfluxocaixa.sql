USE [master]
GO
/****** Object:  Database [dbfluxocaixa]    Script Date: 01/07/2021 22:33:17 ******/
CREATE DATABASE [dbfluxocaixa]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbfluxocaixa', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\dbfluxocaixa.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dbfluxocaixa_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\dbfluxocaixa_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [dbfluxocaixa] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbfluxocaixa].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbfluxocaixa] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbfluxocaixa] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbfluxocaixa] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbfluxocaixa] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbfluxocaixa] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbfluxocaixa] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbfluxocaixa] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbfluxocaixa] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbfluxocaixa] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbfluxocaixa] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbfluxocaixa] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbfluxocaixa] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbfluxocaixa] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbfluxocaixa] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbfluxocaixa] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbfluxocaixa] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbfluxocaixa] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbfluxocaixa] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbfluxocaixa] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbfluxocaixa] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbfluxocaixa] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbfluxocaixa] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbfluxocaixa] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dbfluxocaixa] SET  MULTI_USER 
GO
ALTER DATABASE [dbfluxocaixa] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbfluxocaixa] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbfluxocaixa] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbfluxocaixa] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dbfluxocaixa] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [dbfluxocaixa] SET QUERY_STORE = OFF
GO
USE [dbfluxocaixa]
GO
/****** Object:  Table [dbo].[clienteFornecedor]    Script Date: 01/07/2021 22:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clienteFornecedor](
	[clientefornecedorid] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [varchar](50) NOT NULL,
	[nome] [varchar](255) NOT NULL,
	[cpfCnpj] [varchar](50) NOT NULL,
	[telefone] [varchar](50) NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_clienteFornecedor] PRIMARY KEY CLUSTERED 
(
	[clientefornecedorid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fluxoCaixa]    Script Date: 01/07/2021 22:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fluxoCaixa](
	[fluxocaixaid] [int] IDENTITY(1,1) NOT NULL,
	[datahora] [datetime] NOT NULL,
	[descricao] [varchar](255) NOT NULL,
	[valor] [decimal](18, 2) NOT NULL,
	[tipoTransacao] [varchar](50) NOT NULL,
	[saldoAtual] [decimal](18, 2) NOT NULL,
	[clientefornecedorid] [int] NOT NULL,
 CONSTRAINT [PK_fluxoCaixa] PRIMARY KEY CLUSTERED 
(
	[fluxocaixaid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[clienteFornecedor] ON 

INSERT [dbo].[clienteFornecedor] ([clientefornecedorid], [tipo], [nome], [cpfCnpj], [telefone], [email]) VALUES (1, N'fornecedor', N'Papelaria Freitas', N'184.156.465.665.465', N'(67) 3333-5555', N'contato@papelariafreitas.com')
INSERT [dbo].[clienteFornecedor] ([clientefornecedorid], [tipo], [nome], [cpfCnpj], [telefone], [email]) VALUES (2, N'cliente', N'Joao Martins', N'601.212.261-91', N'(67) 99281-1455', N'joao@gmail.com')
INSERT [dbo].[clienteFornecedor] ([clientefornecedorid], [tipo], [nome], [cpfCnpj], [telefone], [email]) VALUES (3, N'cliente', N'Maria Ferreira', N'049.151.510-00', N'(67) 98405-8585', N'maria@hotmail.com')
SET IDENTITY_INSERT [dbo].[clienteFornecedor] OFF
GO
SET IDENTITY_INSERT [dbo].[fluxoCaixa] ON 

INSERT [dbo].[fluxoCaixa] ([fluxocaixaid], [datahora], [descricao], [valor], [tipoTransacao], [saldoAtual], [clientefornecedorid]) VALUES (1, CAST(N'2021-07-01T14:30:00.000' AS DateTime), N'compra de material de escritorio', CAST(200.00 AS Decimal(18, 2)), N'saida', CAST(-200.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[fluxoCaixa] ([fluxocaixaid], [datahora], [descricao], [valor], [tipoTransacao], [saldoAtual], [clientefornecedorid]) VALUES (2, CAST(N'2021-07-01T15:00:00.000' AS DateTime), N'venda de qualquer coisa', CAST(499.99 AS Decimal(18, 2)), N'entrada', CAST(299.99 AS Decimal(18, 2)), 2)
INSERT [dbo].[fluxoCaixa] ([fluxocaixaid], [datahora], [descricao], [valor], [tipoTransacao], [saldoAtual], [clientefornecedorid]) VALUES (3, CAST(N'2021-07-02T11:20:00.000' AS DateTime), N'compra de materiais de escritorio', CAST(100.00 AS Decimal(18, 2)), N'saida', CAST(199.99 AS Decimal(18, 2)), 1)
INSERT [dbo].[fluxoCaixa] ([fluxocaixaid], [datahora], [descricao], [valor], [tipoTransacao], [saldoAtual], [clientefornecedorid]) VALUES (4, CAST(N'2021-07-02T13:40:00.000' AS DateTime), N'compra mais algumas coisas', CAST(1000.00 AS Decimal(18, 2)), N'entrada', CAST(1199.99 AS Decimal(18, 2)), 2)
INSERT [dbo].[fluxoCaixa] ([fluxocaixaid], [datahora], [descricao], [valor], [tipoTransacao], [saldoAtual], [clientefornecedorid]) VALUES (5, CAST(N'2021-07-03T15:00:00.000' AS DateTime), N'compra de outra coisa', CAST(200.00 AS Decimal(18, 2)), N'entrada', CAST(1399.99 AS Decimal(18, 2)), 3)
SET IDENTITY_INSERT [dbo].[fluxoCaixa] OFF
GO
ALTER TABLE [dbo].[fluxoCaixa]  WITH CHECK ADD  CONSTRAINT [FK_fluxoCaixa_clienteFornecedor] FOREIGN KEY([clientefornecedorid])
REFERENCES [dbo].[clienteFornecedor] ([clientefornecedorid])
GO
ALTER TABLE [dbo].[fluxoCaixa] CHECK CONSTRAINT [FK_fluxoCaixa_clienteFornecedor]
GO
USE [master]
GO
ALTER DATABASE [dbfluxocaixa] SET  READ_WRITE 
GO
