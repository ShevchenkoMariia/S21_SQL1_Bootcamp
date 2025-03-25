-- 1-2
begin transaction isolation level read committed;

-- 1
select sum(rating) from pizzeria;

-- 2
insert into pizzeria (id, name, rating) 
values (10, 'Kazan Pizza', 5);
commit transaction;

-- 1
select sum(rating) from pizzeria;
commit transaction;

-- 1-2
select sum(rating) from pizzeria;

