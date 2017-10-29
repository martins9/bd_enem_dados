-- SCRIPT ELABORADO POR: SAULO MARTINS SOARES DA FONSECA
-- BANCO DE DADOS: PostgreSQL
-- ORIENTADORA: ANA CAROLINA ALMEIDA
-- MONOGRAFIA: BANCO DE DADOS
-- DATA CRIAÇÃO: 11/06/2016 

--------------------------------------------------------------------------------------------------------------
-- Tabela criada no servidor. DATA CRIAÇÃO: 22/06/2016
-- Tabela revisada no servidor. DATA DA REVISÃO:26/06/2016

CREATE TABLE UF(
	SEQUENCIAL_UF NUMERIC(7) NOT NULL PRIMARY KEY,
	SIGLA_UF VARCHAR(2) NOT NULL  
);

CREATE TABLE MUNICIPIO(
	COD_MUNICIPIO   NUMERIC(7)	NOT NULL PRIMARY KEY,
	NOME_MUNICIPIO  VARCHAR(150) NULL,
	SEQUENCIAL_UF   NUMERIC(2) NOT NULL,
	CONSTRAINT FK_MUNICIPIO_UF FOREIGN KEY(SEQUENCIAL_UF) REFERENCES UF(SEQUENCIAL_UF)   
);

--------------------------------------------------------------------------------------------------------------
-- Tabela criada no servidor. DATA CRIAÇÃO: 19/06/2016
-- Tabela revisada no servidor. DATA DA REVISÃO: 26/09/2016

CREATE TABLE ESCOLA(
	COD_ESCOLA NUMERIC(10) NOT NULL PRIMARY KEY,
	COD_MUNICIPIO_ESCOLA NUMERIC(7) NULL,
	NOME_ESCOLA 	  VARCHAR (200) NULL,
	TIPO_ADM_ESCOLA   NUMERIC(1) NULL,
	TIPO_LOCALIZACAO  NUMERIC(1) NULL,
	SIT_FUNC_ESCOLAR  NUMERIC(1) NULL,
	CONSTRAINT FK_ESCOLA_MUNICIPIO FOREIGN KEY(COD_MUNICIPIO_ESCOLA) REFERENCES MUNICIPIO(COD_MUNICIPIO)
);

--------------------------------------------------------------------------------------------------------------
-- Tabela criada no servidor. DATA CRIAÇÃO: 22/06/2016
-- Tabela revisada no servidor. DATA DA REVISÃO:27/10/2016

CREATE TABLE NECESSIDADES_ESPECIAIS(
	NU_INSCRICAO DOUBLE PRECISION NOT NULL PRIMARY KEY,
	IN_MESA_CADEIRA_SEPARADA 	NUMERIC(1) NULL,
	IN_DEFICIENCIA_AUDITIVA 	NUMERIC(1) NULL,
	IN_DEFICIENCIA_MENTAL 	NUMERIC(1) NULL,
	IN_DEFICIENCIA_FISICA	NUMERIC(1) NULL,
	IN_LEITURA_LABIAL 		NUMERIC(1) NULL,
	IN_MESA_CADEIRA_RODAS 	NUMERIC(1) NULL,
	IN_GUIA_INTERPRETE	NUMERIC(1) NULL,
	IN_DEFICIT_ATENCAO	NUMERIC(1) NULL,
	IN_BAIXA_VISAO 		NUMERIC(1) NULL,
	IN_APOIO_PERNA	NUMERIC(1) NULL,
	IN_TRANSCRICAO	NUMERIC(1) NULL,
	IN_SABATISTA	NUMERIC(1) NULL,
	IN_DISLEXIA		NUMERIC(1) NULL,
	IN_GESTANTE	NUMERIC(1) NULL,
	IN_CEGUEIRA	NUMERIC(1) NULL,
	IN_LIBRAS 	NUMERIC(1) NULL,
	IN_LACTANTE	NUMERIC(1) NULL,
	IN_SURDEZ	NUMERIC(1) NULL,
	IN_AUTISMO	NUMERIC(1) NULL,
	IN_IDOSO	NUMERIC(1) NULL,
	IN_LEDOR	NUMERIC(1) NULL,
	IN_ACESSO	NUMERIC(1) NULL
	
);

----------------------------------------------------------------------------------------------------------------
-- Tabela criada no servidor. DATA CRIAÇÃO: 10/07/2016
-- Tabela revisada no servidor. DATA DA REVISÃO: 27/10/2016

CREATE TABLE REDACAO(
	SEQUENCIAL_REDACAO DOUBLE PRECISION NOT NULL PRIMARY KEY,
	ANO_REDACAO NUMERIC(4),
	TEMA VARCHAR(600)
);

----------------------------------------------------------------------------------------------------------------
-- Tabela criada no servidor. DATA CRIAÇÃO: 19/07/2016
-- Tabela revisada no servidor. DATA DA REVISÃO:22/07/2017

CREATE TABLE CANDIDATO(
	NU_INSCRICAO DOUBLE PRECISION  NOT NULL PRIMARY KEY,
	COD_MUNICIPIO_RESIDENCIA  NUMERIC(7) NULL,
	COD_MUNICIPIO_NASCIMENTO  NUMERIC(7) NULL,
	COD_MUNICIPIO_PROVA  NUMERIC(7) NULL,
	COD_ESCOLA NUMERIC(10) NULL, 
	SEQUENCIAL_REDACAO NUMERIC(2) NULL,
	NACIONALIDADE  NUMERIC(1) NULL,
	ANO_CONCLUSAO NUMERIC(4) NULL,
	TP_ESTADO_CIVIL NUMERIC(1) NULL,
	ST_CONCLUSAO NUMERIC(1) NULL,
	IN_TP_ENSINO NUMERIC(1) NULL,
	TP_COR_RACA NUMERIC(1) NULL,
	NU_ANO NUMERIC(4) NULL,
	IDADE NUMERIC(3) NULL,
	TP_SEXO VARCHAR(1) NULL,
	NU_NOTA_COMP1 NUMERIC(9,2) NULL,
	NU_NOTA_COMP2 NUMERIC(9,2) NULL,
	NU_NOTA_COMP3 NUMERIC(9,2) NULL,
	NU_NOTA_COMP4 NUMERIC(9,2) NULL,
	NU_NOTA_COMP5 NUMERIC(9,2) NULL,
	NU_NOTA_REDACAO NUMERIC (9,2) NULL,
	TP_LINGUA NUMERIC(1) NULL,
	IN_STATUS_REDACAO VARCHAR(2) NULL,
	CONSTRAINT FK_CANDIDATO_ESCOLA FOREIGN KEY(COD_ESCOLA) REFERENCES ESCOLA (COD_ESCOLA),
	CONSTRAINT FK_CANDIDATO_REDACAO FOREIGN KEY(SEQUENCIAL_REDACAO) REFERENCES REDACAO (SEQUENCIAL_REDACAO),
	CONSTRAINT FK_CANDIDATO_MUNICIPIO FOREIGN KEY(COD_MUNICIPIO_RESIDENCIA) REFERENCES MUNICIPIO (COD_MUNICIPIO),
	CONSTRAINT FK_CANDIDATO_MUNICIP_IO FOREIGN KEY(COD_MUNICIPIO_NASCIMENTO) REFERENCES MUNICIPIO (COD_MUNICIPIO),
	CONSTRAINT FK_CANDIDATO_MUNICIPI_O FOREIGN KEY(COD_MUNICIPIO_PROVA) REFERENCES MUNICIPIO (COD_MUNICIPIO)
);

----------------------------------------------------------------------------------------------------------------
-- Tabela criada no servidor. DATA CRIAÇÃO: 07/08/2016
-- Tabela revisada no servidor. DATA DA REVISÃO: 18/08/2016

CREATE TABLE  COR(
	COD_COR NUMERIC(3)	NOT NULL PRIMARY KEY,
	NOME_COR VARCHAR(36) NOT NULL
);

CREATE TABLE AREA(
	COD_AREA NUMERIC(1) NOT NULL PRIMARY KEY,
	NOME_AREA  VARCHAR(100) NULL, 
	SIGLA_AREA VARCHAR(2) NULL
);

----------------------------------------------------------------------------------------------------------------
-- Tabela criada no servidor. DATA CRIAÇÃO: 12/08/2016
-- Tabela revisada no servidor. DATA DA REVISÃO: 18/08/2016

CREATE TABLE PROVA(
	ID_PROVA NUMERIC(7) PRIMARY KEY,
	ANO_PROVA NUMERIC(4) NULL,
	COD_AREA NUMERIC(1) NULL,
	COD_COR  NUMERIC(1) NULL,
	CONSTRAINT FK_PROVA_AREA FOREIGN KEY (COD_AREA) REFERENCES AREA (COD_AREA),
	CONSTRAINT FK_PROVA_COR FOREIGN KEY (COD_COR) REFERENCES COR (COD_COR)
);

----------------------------------------------------------------------------------------------------------------
-- Tabela criada no servidor. DATA CRIAÇÃO: 07/08/2016
-- Tabela revisada no servidor. DATA DA REVISÃO: 16/06/2017

CREATE TABLE REALIZA(
	NU_INSCRICAO DOUBLE PRECISION  NOT NULL,
	ID_PROVA NUMERIC(7)  NOT NULL,
	IN_PRESENCA NUMERIC(1) NULL,
	NOTA_PROVA NUMERIC(9,2) NULL,
 	CONSTRAINT PK_REALIZA PRIMARY KEY (NU_INSCRICAO, ID_PROVA),
	CONSTRAINT FK_REALIZA_CANDIDATO FOREIGN KEY (NU_INSCRICAO) REFERENCES CANDIDATO (NU_INSCRICAO),
	CONSTRAINT FK_REALIZA_PROVA FOREIGN KEY (ID_PROVA) REFERENCES PROVA (ID_PROVA)
);

-----------------------------------------------------------------------------------------------------------------
-- Tabela criada no servidor. DATA CRIAÇÃO: 13/02/2017
-- Tabela revisada no servidor. DATA DA REVISÃO:

CREATE TABLE QUESTAO(
	SEQUENCIAL_QUESTAO NUMERIC(11) NOT NULL,
	GABARITO_EN VARCHAR(1),
	GABARITO_ES VARCHAR(1),
	CONSTRAINT PK_QUESTAO PRIMARY KEY (SEQUENCIAL_QUESTAO)
);

-----------------------------------------------------------------------------------------------------------------
-- Tabela criada no servidor. DATA CRIAÇÃO: 10/09/2016
-- Tabela revisada no servidor. DATA DA REVISÃO: 

CREATE TABLE RESPONDE(
	NU_INSCRICAO DOUBLE PRECISION  NOT NULL,
	SEQUENCIAL_QUESTAO NUMERIC(12) NOT NULL,
	RESPOSTA_QUESTAO VARCHAR(1) NULL,
 	CONSTRAINT PK_RESPONDE PRIMARY KEY (NU_INSCRICAO, SEQUENCIAL_QUESTAO),
	CONSTRAINT FK_RESPONDE_CANDIDATO FOREIGN KEY (NU_INSCRICAO) REFERENCES CANDIDATO (NU_INSCRICAO),
	CONSTRAINT FK_RESPONDE_QUESTAO FOREIGN KEY (SEQUENCIAL_QUESTAO) REFERENCES QUESTAO (SEQUENCIAL_QUESTAO)
);


-----------------------------------------------------------------------------------------------------------------
-- Tabela criada no servidor. DATA CRIAÇÃO: 27/01/2017
-- Tabela revisada no servidor. DATA DA REVISÃO: 05/03/2017

CREATE TABLE CONTEM(
	ID_PROVA NUMERIC(7)  NOT NULL,
	SEQUENCIAL_QUESTAO NUMERIC(11) NOT NULL,
	CONSTRAINT PK_CONTEM PRIMARY KEY (ID_PROVA, SEQUENCIAL_QUESTAO),
	CONSTRAINT FK_CONTEM_PROVA FOREIGN KEY(ID_PROVA) REFERENCES PROVA(ID_PROVA),
	CONSTRAINT FK_CONTEM_QUESTAO FOREIGN KEY(SEQUENCIAL_QUESTAO) REFERENCES QUESTAO(SEQUENCIAL_QUESTAO)
);

-----------------------------------------------------------------------------------------------------------------
-- Tabela criada no servidor. DATA CRIAÇÃO: 31/12/2016
-- Tabela revisada no servidor. DATA DA REVISÃO: 05/01/2017

CREATE TABLE QUESTAO_SOCIOECONOMICO(
	SEQUENCIAL_QUESTIONARIO_SOCIO NUMERIC(2) NOT NULL PRIMARY KEY,
	QUESTAO VARCHAR(500) NULL
);

-----------------------------------------------------------------------------------------------------------------
-- Tabela criada no servidor. DATA CRIAÇÃO: 12/01/2016
-- Tabela revisada no servidor. DATA DA REVISÃO:13/01/2016

CREATE TABLE PREENCHE(
	NU_INSCRICAO DOUBLE PRECISION  NOT NULL,
	SEQUENCIAL_QUESTIONARIO_SOCIO NUMERIC(2) NOT NULL,
	RESPOSTA_SOCIOECONOMICO	VARCHAR(2) NULL,
	CONSTRAINT PK_PREENCHE PRIMARY KEY (NU_INSCRICAO, SEQUENCIAL_QUESTIONARIO_SOCIO),
	CONSTRAINT FK_PREENCHE_QUESTAO_SOCIOECONOMICO FOREIGN KEY(SEQUENCIAL_QUESTIONARIO_SOCIO) REFERENCES QUESTAO_SOCIOECONOMICO(SEQUENCIAL_QUESTIONARIO_SOCIO),
	CONSTRAINT FK_PREENCHE_CANDIDATO FOREIGN KEY(NU_INSCRICAO) REFERENCES CANDIDATO(NU_INSCRICAO)
);
