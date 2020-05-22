create or replace trigger trigger_for_budget
before insert or update on film
for each row
begin
    if inserting and :new.budget < 0 then
        :new.budget := 0;
    elsif updating and :new.budget < 0 then
        :new.budget := 0;
    end if;
end;
