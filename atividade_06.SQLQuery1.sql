-- criando Banco de dados 

CREATE DATABASE ESCOLA;

-- tabela aluno

CREATE TABLE ALUNO (
    ID INT PRIMARY KEY,
    nome_aluno VARCHAR(70) not null,
	matricula int not null,
    email VARCHAR(70) not null,
    endereco VARCHAR(70) not null,
	telefone int not null, 
);

insert into Aluno (ID, nome_aluno, matricula, email, endereco, telefone)
 values 
  (1, 'João Carlo', 1234, 'jcarlos@gmail.com', 'Rua 13 de Maio', 117825-4489)


insert into Aluno (ID, nome_aluno, matricula, email, endereco, telefone)
 values 
 (2,'José Vitor', 2345, 'jvitor@gmail.com', 'Rua da Saudade', 1178256589),
 (3, 'Paulo Andre', 3456, 'pandr@gmail.com', 'Rua do Sol', 1178254495)

 select * from ALUNO

-- tabela Livro e tabela sessao

 CREATE TABLE Livro (
    ID_cod_livro INT PRIMARY KEY,
    Titulo VARCHAR(100),
    Autor VARCHAR(45),
    Cod_sessao int
);

CREATE TABLE Sessao (
    ID_codigo INT PRIMARY KEY,
    Descicao VARCHAR(100) not null,
    Localizacao VARCHAR(45) not null
  
);

insert into Livro (ID_cod_livro, Titulo, Autor, Cod_sessao)
 values 
   (01, 'Modelo Conceitual e Diagramas ER', 'Pressman, Roger S.', 03),
   (02, 'Livro 2: Modelo Relacional e Álgebra Relaional', 'Heuser, Carlos Alberto', 01),
   (03, 'Livro 3: Linguagem SQL', 'Beighley, Lynn', 02)

select * from Livro

insert into Sessao (ID_codigo, Descicao,Localizacao)
 Values
   (01, 'Sessao1', 'Partilheira1'),
   (02, 'Sessao2', 'Partilheira2'),
   (03, 'Sessao3', 'Partilheira3')


select * from Sessao

-- tabela livro emprestimo

CREATE TABLE Livro_Emprestimo (
    ID_cod_livro INT PRIMARY KEY,
   Cod_emprestimo int not null,
     
);

Insert into Livro_Emprestimo (ID_cod_livro, Cod_emprestimo)
 values
  (03, 01),
  (01, 03),
  (02, 02)

select * from Livro_Emprestimo

-- tabela emprestimo
CREATE TABLE Emprestimo (
    ID_codigo INT PRIMARY KEY,
    Cod_emprestimo int not null,
    Data_hora datetime not null,
	Matricula_aluno int not null, 
	data_devolucao date not null
);

insert into Emprestimo (ID_codigo, Data_hora, Matricula_aluno, data_devolucao)
 values 
   (01, '15/10/2023 00:38', 1234, '25/10/2023')

insert into Emprestimo (ID_codigo, Data_hora, Matricula_aluno, data_devolucao)
 values 
   (02, '15/10/2023 00:38', 3456, '27/10/2023'),
   (03, '15/10/2023 00:38', 2345, '29/10/2023')

select * from Emprestimo

--comando excluido coluna

ALTER TABLE Emprestimo
DROP COLUMN Cod_emprestimo;

-- alterando dados 

update Aluno set nome_aluno = 'Camila Reis' where id = 1

select * from aluno 