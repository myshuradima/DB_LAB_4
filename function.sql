create or replace package film_package is

    type film_row_type is record(
        film_name film.film_name%type,
        release_date film.release_date%type,
        genre_name genres.genre_name%type,
        company_name production_company.company_name%type
    );
    
    type film_table_pipe_type is table of film_row_type;
    
    function FilmFunctionPipe(film_name_v varchar2)
    return film_table_pipe_type
    pipelined;

end film_package;
/
create or replace package body film_package is
    function FilmFunctionPipe(film_name_v varchar2)
    return film_table_pipe_type
    pipelined
    is
    begin
        for film_iterator IN (
            select film.film_name
            , film.release_date
            , genres.genre_name
            , production_company.company_name
            from film join film_genre on film.film_id = film_genre.film_film_id
                join genres on film_genre.genres_genre_id = genres.genre_id
                join film_company on film.film_id = film_company.film_film_id
                join production_company on film_company.production_company_company_id = production_company.company_id
            where film.film_name = film_name_v
            )
        loop
            pipe row(film_iterator);
        end loop;
    end;
end film_package;

        
        
        
        
        
        
        
        
        