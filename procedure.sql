set SERVEROUTPUT ON;
create or replace PROCEDURE film_procedure(
    film_name_v varchar2
    , genre_name_v varchar2
    )
is
    film_id_v number;
    genre_id_v number;
    myline_v varchar2(200);
begin
    myline_v := 'no such film';
    select film_id
    into film_id_v
    from film
    where film_name = film_name_v;
    
    myline_v := 'no such genre';
    select genre_id
    into genre_id_v
    from genres
    where genre_name = genre_name_v;
    
    myline_v := 'no films with such genre';
    select genres_genre_id, film_film_id
    into genre_id_v, film_id_v
    from film_genre
    where genres_genre_id = genre_id_v and film_film_id = film_id_v;
    
    delete from film_genre
    where genres_genre_id = genre_id_v and film_film_id = film_id_v;
    
    DBMS_OUTPUT.PUT_LINE('the genre was deleted from film');
    
exception
    when no_data_found then
        DBMS_OUTPUT.PUT_LINE(myline_v);
end;








