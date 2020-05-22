insert into film(film_id, film_name, release_date, homepage, budget) 
    values(1, 'A Fistful of Dollars', '13-04-1967', 'http://A_Fistful_of_Dollars.com', 150000);
insert into film(film_id, film_name, release_date, homepage, budget) 
    values(2, 'For a Few Dollars More', '13-04-1987', 'http://For_a_Few_Dollars_More.com', 180000);
insert into film(film_id, film_name, release_date, homepage, budget) 
    values(3, 'The Good, the Bad and the Ugly', '13-04-1980', 'http://The_Good,_the Bad_and_the_Ugly.com', 200000);
    
insert into genres(genre_id, genre_name) values (1, 'Vestern');
insert into genres(genre_id, genre_name) values (2, 'Comedy');
insert into genres(genre_id, genre_name) values (3, 'Drama');

insert into film_genre(film_film_id, genres_genre_id) values (1, 1);
insert into film_genre(film_film_id, genres_genre_id) values (2, 2);
insert into film_genre(film_film_id, genres_genre_id) values (3, 3);
insert into film_genre(film_film_id, genres_genre_id) values (1, 3);

insert into production_company(company_id, company_name) values(1, 'Warner Brothers');
insert into production_company(company_id, company_name) values(2, 'Paramount');
insert into production_company(company_id, company_name) values(3, 'Constantin films');

insert into film_company(film_film_id, production_company_company_id) values (1, 1);
insert into film_company(film_film_id, production_company_company_id) values (2, 2);
insert into film_company(film_film_id, production_company_company_id) values (3, 3);

insert into spoken_language(language_id, language_name) values ('UK', 'English');
insert into spoken_language(language_id, language_name) values ('UA', 'Ukranian');
insert into spoken_language(language_id, language_name) values ('SP', 'Spanish');

insert into film_language(spoken_language_language_id, film_film_id) values ('UK', 1);
insert into film_language(spoken_language_language_id, film_film_id) values ('UA',2 );
insert into film_language(spoken_language_language_id, film_film_id) values ('SP', 3);

insert into users_table(user_id, user_name) values (1, 'Bob');
insert into users_table(user_id, user_name) values (2, 'Adam');
insert into users_table(user_id, user_name) values (3, 'Cathy');

insert into marks(film_film_id, users_user_id, film_mark) values(1, 1, 5);
insert into marks(film_film_id, users_user_id, film_mark) values(1, 2, 5);
insert into marks(film_film_id, users_user_id, film_mark) values(2, 1, 5);

