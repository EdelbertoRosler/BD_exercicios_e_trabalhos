use db_app_db2;

create table if not exists autores(
	id_autor			int unsigned primary key not null auto_increment,
	nome_autor			varchar(100),
	nasc_autor			date 
);

create table if not exists livros(
	codigo_livro 		int unsigned primary key auto_increment,
    titulo 				varchar(100), 
    editora 			varchar(100),
    genero				varchar(50),
    ano_publicacao		varchar(4),
    inicio_leitura      datetime,
    fim_leitura         datetime,
	autor 				int unsigned not null,
		constraint livros_autor_fk 
		foreign key (autor) 
		references autores (id_autor)
);

create table if not exists leitor(
	id_leitor			int unsigned primary key auto_increment,
    nome_leitor			varchar(100),
    email				varchar(100),
    sexo				enum ('M','F')
);

create table if not exists leituras(
    leitor_id			int unsigned unique not null,
		constraint leitura_leitor_fk
        foreign key (leitor_id)
        references leitor (id_leitor),
	livro_id			int unsigned unique not null,
		constraint leitura_livro_fk
        foreign key (livro_id)
        references livros (codigo_livro),
	inicio             	datetime,
    fim					datetime
);

select * from  leituras;