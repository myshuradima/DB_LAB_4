---Cheking trigger---------
insert into film(film_id, budget, film_name, release_date, homepage)
values(4, -2000, 'my film', sysdate, 'film_page.net');

update film
set budget = -123545
where film_id = 3;

select film_name, budget from film where film_id in (3, 4);

-------cheking procedure-------

select film_name, genre_name from film join film_genre on film.film_id = film_genre.film_film_id
                                    join genres on film_genre.genres_genre_id = genres.genre_id
where film_id = 1;

exec film_procedure('The Good', 'Drama');

exec film_procedure('A Fistful of Dollars', 'D');

exec film_procedure('A Fistful of Dollars', 'Comedy');

exec film_procedure('A Fistful of Dollars', 'Drama');

select film_name, genre_name from film join film_genre on film.film_id = film_genre.film_film_id
                                    join genres on film_genre.genres_genre_id = genres.genre_id
where film_id = 1;

----checking function--------

select * from TABLE(film_package.FilmFunctionPipe('The Good, the Bad and the Ugly'));

