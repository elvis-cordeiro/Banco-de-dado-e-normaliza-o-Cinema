#criando banaco de dados dos cinemas

Create database cinemas;

#selecionando a tabela criada Cinemas
use cinemas;

create table Cinemas(
	cnpj char (14),
    nome_fantasia varchar (100),
    capacidade_delotacao varchar(50) not null,
    Rua_avenida varchar (100) not null,
    Bairro varchar(100) not null,
    Municipio varchar(100) not null,
    Estado varchar(100) not null,
    primary key (cnpj)
);
create table Sessoes(
	Cod_sessao BIGINT UNSIGNED AUTO_INCREMENT UNIQUE,
    horarios DECIMAL(4,2),
    intervalos DECIMAL(4,2),
    Fk_cnpj char (14),
    primary key (Cod_sessao),
    foreign key (Fk_cnpj) references Cinemas (cnpj)
);

create table Publico(
	id_publico BIGINT UNSIGNED AUTO_INCREMENT UNIQUE,
    total_assistentes varchar (20),
    publico_total varchar (40),
    primary key (id_publico)
);

create table Estrangeiros(
	id_estrangeiro BIGINT UNSIGNED AUTO_INCREMENT UNIQUE,
	pais_origem varchar(25),
    titulo_internacional varchar(100),
    titulo_nacional varchar(100),
    primary key (Id_estrangeiro)
    );

create table Atores(
	num_id_ator BIGINT UNSIGNED AUTO_INCREMENT UNIQUE,
	nome_ator varchar (100),
    nacionalidade varchar(50),
    idade char (2),
    informacoes varchar (150),
    primary key (num_id_ator)
);
    
create table Diretores(
	nome_diretor varchar(100),
    Fk_num_id_ator BIGINT UNSIGNED AUTO_INCREMENT UNIQUE,
    primary key (nome_diretor),
    foreign key (Fk_num_id_ator) references Atores (num_id_ator)
    );
    
create table Elenco (
	id_elenco BIGINT UNSIGNED AUTO_INCREMENT UNIQUE,
    fk_num_id_ator BIGINT UNSIGNED AUTO_INCREMENT UNIQUE,
    foreign key (fk_num_id_ator) references Atores (num_id_ator),
	foreign key (fk_num_diretor) references Diretores (num_diretor),
    primary key (id_elenco)
);  

create table Filmes(
	faixa_etaria char(2) not null,
    duração time not null,
	genero varchar (50),
	Fk_id_elenco BIGINT UNSIGNED AUTO_INCREMENT UNIQUE,
    Fk_id_publico BIGINT UNSIGNED AUTO_INCREMENT UNIQUE,
    Fk_id_estrangeiro BIGINT UNSIGNED AUTO_INCREMENT UNIQUE,
    Fk_Cod_sessao BIGINT UNSIGNED AUTO_INCREMENT UNIQUE,
    Fk_id_elenco BIGINT UNSIGNED AUTO_INCREMENT UNIQUE,
    foreign key (fk_id_elenco) references Elenco (id_elenco),
    foreign key (fk_id_publico) references Publico (id_publico),
    foreign key (fk_id_estrangeiro) references Estrangeiros (id_estrangeiro),
    foreign key (fk_Cod_sessao) references Sessoes (Cod_sessao),
	foreign key (fk_id_elenco) references Elenco (id_elenco)
);

    
