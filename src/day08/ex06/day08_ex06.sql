-- 1-2
begin transaction isolation level repeatable read;

-- 1
select sum(rating) from pizzeria;

-- 2
insert into pizzeria (id, name, rating) values (11, 'Kazan Pizza 2', 4);
commit transaction;

-- 1
select sum(rating) from pizzeria;
commit transaction;

-- 1-2
select sum(rating) from pizzeria;
