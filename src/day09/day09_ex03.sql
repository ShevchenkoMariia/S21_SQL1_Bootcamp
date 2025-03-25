drop trigger if exists trg_person_insert_audit on person;
drop trigger if exists trg_person_update_audit on person;
drop trigger if exists trg_person_delete_audit on person;

drop function if exists fnc_trg_person_insert_audit();
drop function if exists fnc_trg_person_updste_audit();
drop function if exists fnc_trg_person_delete_audit();

drop trigger if exists trg_person_audit;
drop function if exists fnc_trg_person_audit();

create or replace function fnc_trg_person_audit()
returns trigger as $$
begin
	if(tg_op = 'insert') then
		insert into person_audit (row_id, name, age, gender, address)
                values (new.id, new.name, new.age, new.gender, new.address);
        elsif(tg_op = 'update') then
		insert into person_audit(type_event, row_id, name, age, gender, address)
                values ('U', old.id, old.name, old.age, old.gender, old.address);
	elsif(tg_op = 'delete') then
		insert into person_audit(type_event, row_id, name, age, gender, address)
                values('D', old.id, old.name, old.age, old.gender, old.address);
	end if;
        return null;
end;
$$ language plpgsql;

create or replace trigger trg_person_audit
after insert or update or delete on person
for each row execute function fnc_trg_person_audit();

INSERT INTO person(id, name, age, gender, address)  VALUES (10,'Damir', 22, 'male', 'Irkutsk');
UPDATE person SET name = 'Bulat' WHERE id = 10;
UPDATE person SET name = 'Damir' WHERE id = 10;
DELETE FROM person WHERE id = 10;

select * from person_audit;
