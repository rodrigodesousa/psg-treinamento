USE [master]
GO
/****** Object:  Database [dblojaJogos]    Script Date: 05/07/2021 00:21:39 ******/
CREATE DATABASE [dblojaJogos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dblojaJogos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\dblojaJogos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dblojaJogos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\dblojaJogos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [dblojaJogos] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dblojaJogos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dblojaJogos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dblojaJogos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dblojaJogos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dblojaJogos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dblojaJogos] SET ARITHABORT OFF 
GO
ALTER DATABASE [dblojaJogos] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dblojaJogos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dblojaJogos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dblojaJogos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dblojaJogos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dblojaJogos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dblojaJogos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dblojaJogos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dblojaJogos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dblojaJogos] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dblojaJogos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dblojaJogos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dblojaJogos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dblojaJogos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dblojaJogos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dblojaJogos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dblojaJogos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dblojaJogos] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dblojaJogos] SET  MULTI_USER 
GO
ALTER DATABASE [dblojaJogos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dblojaJogos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dblojaJogos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dblojaJogos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dblojaJogos] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [dblojaJogos] SET QUERY_STORE = OFF
GO
USE [dblojaJogos]
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 05/07/2021 00:21:40 ******/
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
/****** Object:  Table [dbo].[cliente]    Script Date: 05/07/2021 00:21:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[clienteId] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](250) NOT NULL,
	[endereco] [varchar](300) NOT NULL,
	[cep] [varchar](50) NOT NULL,
	[telefone] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[cpf] [varchar](11) NULL,
	[numeroCartao] [varchar](50) NULL,
	[titularCartao] [varchar](250) NULL,
	[codigoCartao] [varchar](50) NULL,
	[validade] [date] NULL,
 CONSTRAINT [PK_cliente] PRIMARY KEY CLUSTERED 
(
	[clienteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[formaPagamento]    Script Date: 05/07/2021 00:21:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[formaPagamento](
	[formaPagamentoId] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_formaPagamento] PRIMARY KEY CLUSTERED 
(
	[formaPagamentoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fornecedor]    Script Date: 05/07/2021 00:21:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fornecedor](
	[fornecedorId] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](250) NOT NULL,
	[endereco] [varchar](300) NOT NULL,
	[cep] [varchar](50) NOT NULL,
	[telefone] [varchar](50) NOT NULL,
	[email] [varchar](150) NOT NULL,
 CONSTRAINT [PK_fornecedor] PRIMARY KEY CLUSTERED 
(
	[fornecedorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[produto]    Script Date: 05/07/2021 00:21:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[produto](
	[produtoId] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](150) NOT NULL,
	[descricao] [varchar](250) NOT NULL,
	[valor] [float] NOT NULL,
	[estoque] [int] NOT NULL,
	[categoriaId] [int] NOT NULL,
	[fornecedorId] [int] NOT NULL,
 CONSTRAINT [PK_produto] PRIMARY KEY CLUSTERED 
(
	[produtoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[venda]    Script Date: 05/07/2021 00:21:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venda](
	[vendaId] [int] IDENTITY(1,1) NOT NULL,
	[dataVenda] [date] NOT NULL,
	[valorTotal] [float] NOT NULL,
	[clienteId] [int] NOT NULL,
	[formaPagamentoId] [int] NOT NULL,
 CONSTRAINT [PK_venda] PRIMARY KEY CLUSTERED 
(
	[vendaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vendaProduto]    Script Date: 05/07/2021 00:21:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vendaProduto](
	[vendaProdutoId] [int] IDENTITY(1,1) NOT NULL,
	[quantidade] [int] NOT NULL,
	[vendaId] [int] NOT NULL,
	[produtoId] [int] NOT NULL,
 CONSTRAINT [PK_vendaProduto] PRIMARY KEY CLUSTERED 
(
	[vendaProdutoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[categoria] ON 

INSERT [dbo].[categoria] ([categoriaId], [nome]) VALUES (1, N'Peças')
INSERT [dbo].[categoria] ([categoriaId], [nome]) VALUES (2, N'Jogos')
INSERT [dbo].[categoria] ([categoriaId], [nome]) VALUES (3, N'Arcades')
INSERT [dbo].[categoria] ([categoriaId], [nome]) VALUES (4, N'Controles')
SET IDENTITY_INSERT [dbo].[categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[cliente] ON 

INSERT [dbo].[cliente] ([clienteId], [nome], [endereco], [cep], [telefone], [email], [cpf], [numeroCartao], [titularCartao], [codigoCartao], [validade]) VALUES (1, N'Joao das Coves', N'Rua dos Patos, 1500, Bairro das Gaivotas', N'7900000', N'(67) 98405-0523', N'joao@gmail.com', NULL, N'4555 5555 6666 1111', N'Joao Coves', N'146', CAST(N'2027-06-06' AS Date))
SET IDENTITY_INSERT [dbo].[cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[formaPagamento] ON 

INSERT [dbo].[formaPagamento] ([formaPagamentoId], [tipo]) VALUES (1, N'debito')
INSERT [dbo].[formaPagamento] ([formaPagamentoId], [tipo]) VALUES (2, N'credito')
INSERT [dbo].[formaPagamento] ([formaPagamentoId], [tipo]) VALUES (3, N'boleto')
SET IDENTITY_INSERT [dbo].[formaPagamento] OFF
GO
SET IDENTITY_INSERT [dbo].[fornecedor] ON 

INSERT [dbo].[fornecedor] ([fornecedorId], [nome], [endereco], [cep], [telefone], [email]) VALUES (1, N'Fornecedor de Jogos', N'Rua qualquer coisa', N'79000-00', N'(67) 98499-9999', N'jogos@gmail.com')
INSERT [dbo].[fornecedor] ([fornecedorId], [nome], [endereco], [cep], [telefone], [email]) VALUES (2, N'Fornecedor de Peças', N'Rua qualquer coisa', N'79000-32', N'(67) 98499-8888', N'pecas@gmail.com')
INSERT [dbo].[fornecedor] ([fornecedorId], [nome], [endereco], [cep], [telefone], [email]) VALUES (3, N'Fornecedor de Maquinas', N'Rua qualquer coisa', N'79000-12', N'(67) 98499-7777', N'maquinas@gmail.com')
SET IDENTITY_INSERT [dbo].[fornecedor] OFF
GO
SET IDENTITY_INSERT [dbo].[produto] ON 

INSERT [dbo].[produto] ([produtoId], [nome], [descricao], [valor], [estoque], [categoriaId], [fornecedorId]) VALUES (1, N'Street fighter V', N'Jogo de luta classico', 105.99, 5, 2, 1)
INSERT [dbo].[produto] ([produtoId], [nome], [descricao], [valor], [estoque], [categoriaId], [fornecedorId]) VALUES (2, N'Arcade Stick 2nd impact', N'Controle de alta qualidade', 849.99, 3, 4, 3)
INSERT [dbo].[produto] ([produtoId], [nome], [descricao], [valor], [estoque], [categoriaId], [fornecedorId]) VALUES (3, N'Jogo de botoes Sanwa', N'Botoes Sanwa de alta qualidade', 149.99, 50, 1, 2)
SET IDENTITY_INSERT [dbo].[produto] OFF
GO
SET IDENTITY_INSERT [dbo].[venda] ON 

INSERT [dbo].[venda] ([vendaId], [dataVenda], [valorTotal], [clienteId], [formaPagamentoId]) VALUES (1, CAST(N'2021-07-04' AS Date), 1105.97, 1, 1)
SET IDENTITY_INSERT [dbo].[venda] OFF
GO
SET IDENTITY_INSERT [dbo].[vendaProduto] ON 

INSERT [dbo].[vendaProduto] ([vendaProdutoId], [quantidade], [vendaId], [produtoId]) VALUES (1, 1, 1, 1)
INSERT [dbo].[vendaProduto] ([vendaProdutoId], [quantidade], [vendaId], [produtoId]) VALUES (2, 1, 1, 2)
INSERT [dbo].[vendaProduto] ([vendaProdutoId], [quantidade], [vendaId], [produtoId]) VALUES (3, 1, 1, 3)
SET IDENTITY_INSERT [dbo].[vendaProduto] OFF
GO
ALTER TABLE [dbo].[produto]  WITH CHECK ADD  CONSTRAINT [FK_produto_categoria] FOREIGN KEY([categoriaId])
REFERENCES [dbo].[categoria] ([categoriaId])
GO
ALTER TABLE [dbo].[produto] CHECK CONSTRAINT [FK_produto_categoria]
GO
ALTER TABLE [dbo].[produto]  WITH CHECK ADD  CONSTRAINT [FK_produto_fornecedor] FOREIGN KEY([fornecedorId])
REFERENCES [dbo].[fornecedor] ([fornecedorId])
GO
ALTER TABLE [dbo].[produto] CHECK CONSTRAINT [FK_produto_fornecedor]
GO
ALTER TABLE [dbo].[produto]  WITH CHECK ADD  CONSTRAINT [FK_produto_produto] FOREIGN KEY([produtoId])
REFERENCES [dbo].[produto] ([produtoId])
GO
ALTER TABLE [dbo].[produto] CHECK CONSTRAINT [FK_produto_produto]
GO
ALTER TABLE [dbo].[venda]  WITH CHECK ADD  CONSTRAINT [FK_venda_cliente] FOREIGN KEY([clienteId])
REFERENCES [dbo].[cliente] ([clienteId])
GO
ALTER TABLE [dbo].[venda] CHECK CONSTRAINT [FK_venda_cliente]
GO
ALTER TABLE [dbo].[venda]  WITH CHECK ADD  CONSTRAINT [FK_venda_formaPagamento] FOREIGN KEY([formaPagamentoId])
REFERENCES [dbo].[formaPagamento] ([formaPagamentoId])
GO
ALTER TABLE [dbo].[venda] CHECK CONSTRAINT [FK_venda_formaPagamento]
GO
ALTER TABLE [dbo].[vendaProduto]  WITH CHECK ADD  CONSTRAINT [FK_vendaProduto_venda] FOREIGN KEY([vendaId])
REFERENCES [dbo].[venda] ([vendaId])
GO
ALTER TABLE [dbo].[vendaProduto] CHECK CONSTRAINT [FK_vendaProduto_venda]
GO
USE [master]
GO
ALTER DATABASE [dblojaJogos] SET  READ_WRITE 
GO
