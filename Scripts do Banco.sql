CREATE DATABASE TESTE_GTI

USE [TESTE_GTI]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 07/12/2022 18:37:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[ClienteId] [int] IDENTITY(1,1) NOT NULL,
	[CPF] [varchar](100) NULL,
	[Nome] [varchar](100) NULL,
	[RG] [varchar](100) NULL,
	[Data_Expedicao] [date] NULL,
	[Orgao_Expedicao] [varchar](100) NULL,
	[UF] [varchar](100) NULL,
	[Data_de_Nascimento] [date] NULL,
	[Sexo] [varchar](100) NULL,
	[Estado_Civil] [varchar](100) NULL,
 CONSTRAINT [PK__Cliente__C2FF245D8571C132] PRIMARY KEY CLUSTERED 
(
	[ClienteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EnderecoCliente]    Script Date: 07/12/2022 18:37:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnderecoCliente](
	[EnderecoId] [int] IDENTITY(1,1) NOT NULL,
	[ClienteId] [int] NULL,
	[CEP] [varchar](100) NULL,
	[Logradouro] [varchar](100) NULL,
	[Numero] [varchar](100) NULL,
	[Complemento] [varchar](100) NULL,
	[Bairro] [varchar](100) NULL,
	[Cidade] [varchar](100) NULL,
	[UF] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[EnderecoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
