-- 1-2
begin transaction isolation level read committed;

-- 1
select name, rating from pizzeria where name = 'Pizza Hut';

-- 2
update pizzeria set rating = 3.6 where name = 'Pizza Hut';
commit transaction;

-- 1
select name, rating from pizzeria where name = 'Pizza Hut';
commit transaction;

-- 1-2
select name, rating from pizzeria where name = 'Pizza Hut';
