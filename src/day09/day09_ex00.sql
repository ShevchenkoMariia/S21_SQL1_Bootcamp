drop table if exists person_audit;

create table person_audit
(created timestamp with time zone default current_timestamp not null,
type_event char(1) default 'I' not null,
row_id bigint not null,
name varchar,
age integer,
gender varchar,
address varchar,
constraint ch_type_event check (type_event in ('I', 'D', 'U')));

-- создание триггерной функции
create or replace function fnc_trg_person_insert_audit() returns trigger as $$
begin
	insert into person_audit (row_id, name, age, gender, address)
	values (new.id, new.name, new.age, new.gender, new.address);
	return null;
end;
$$ language plpgsql;

-- создание триггера
create or replace trigger trg_person_insert_audit
after insert on person
for each row
execute function fnc_trg_person_insert_audit();

-- для проверки
insert into person(id, name, age, gender, address)
values (10,'Damir', 22, 'male', 'Irkutsk');
select * from person_audit;

-- удалить лишнюю строку
delete from person
where address = 'Irkutsk';

delete from person_audit
where address = 'Irkutsk';
