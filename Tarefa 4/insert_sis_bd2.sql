use db_app_db2;

insert into autores (nome_autor, nasc_autor) values
	("Friedrich Nietzsche", "1844-10-15"), #1
    ("Augusto Cury", "1954-10-02"), #2
    ("Nicholas Sparks", "1965-12-31"); #3

insert into livros (titulo, editora, genero, ano_publicacao,autor) values
	("Assim falou Zaratustra", "Martin Claret", "Romance filosófico", "1983", "1"), #1
    ("Ansiedade", "Saraiva", "Autoajuda", "2013", "2"), #2
    ("No seu olhar", "Arqueiro", "Romance", "2015", "3"), #3
    ("O código da inteligência", "Editora Sextante", "Autoajuda", "2008", "2"); #2
    
insert into leitor (nome_leitor, email, sexo) values
	("Ricardo Varella", "ricardovarella@leitor.com.br", "M"), #1
    ("Maria de Fátima", "mariadefatima@leitor.com.br", "F"), #2
    ("Vitória Britto", "vitoriabrito@leitor.com.br", "F"); #3
    
insert into leituras (leitor_id, livro_id, inicio, fim) values
	("1", "4", now(), now()), 
    ("3", "2", now(), now()); 
    
select * from leituras;


                  
    

