use sakila;

# 7. Quais atores têm no primeiro nome a sequência de caracteres lett?
select first_name from actor 
	where first_name LIKE '%LETT%';

# 8. Quais filmes possuem trailers?
select film_id, title, special_features from film
	where special_features like '%Trailers%';
    
# 9. Quais os tipos de classificações indicativas (rating) existentes nos cadastros de filmes?
select distinct rating classificacao from film;

/* 10. Quais filmes possuem drama na descrição e classificação indicativa (rating) contendo a
sequência de caracteres PG? */
select film_id filme_id, title titulo, description descricao, rating classificacao from film
	where description like '%Drama%'
    and rating like '%PG%';
    
/* 11. Faça uma consulta com uma projeção mostrando o tamanho da descrição de cada filme,
seguido de todos os outros atributos da tabela de filmes, ordenando de maneira decrescente,
da maior descrição para a menor, somente dos filmes cujo custo de reposição
(replacement_cost) esteja entre 20 e 25. */
select length(description) as tamanho, film_id, title, description descricao,
release_year, language_id, original_language_id, rental_duration, rental_rate,
length, replacement_cost, rating, special_features, last_update from film 
	where replacement_cost between '20' and '25'
	order by length(description) desc;
    

/* 12. Faço uma consulta das cidades projetando todas as colunas mais uma, na qual caso o código
do país do registro seja 15, mostre Brasil, caso seja 104, mostre Espanha, 49 mostre Itália, e
para os outros casos mostre ‘NA’. */
select city_id, city, country_id, last_update,
case
	when country_id = 15 then 'Brasil'
    when country_id = 104 then 'Espanha'
    when country_id = 49 then 'Itália'
    else 'NA'
end 
as País from city;

#13. Encontre todos os autores cujo primeiro nome é palíndromo.
select first_name from actor
	where first_name = reverse(first_name); 

/*14. Encontre todos os clientes (customer) cujo primeiro nome tem o mesmo número de letras
que o segundo, ou que o e-mail tem um a antes da letra anterior ao @.*/
select first_name, last_name, email from customer
	where (length(first_name) = length(last_name)
    or email like '%a_@%'
	);










