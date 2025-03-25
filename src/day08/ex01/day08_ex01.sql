-- 1-2
begin transaction;

-- 1-2
select name, rating from pizzeria where name = 'Pizza Hut';

-- 1
update pizzeria set rating = 4 where name = 'Pizza Hut';
-- 2
update pizzeria set rating = 3.6 where name = 'Pizza Hut';

-- 1-2 
commit transaction;

-- 1-2
select name, rating from pizzeria where name = 'Pizza Hut';


