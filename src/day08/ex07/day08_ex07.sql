-- 1-2
begin transaction;

-- 1
update pizzeria set rating = 2 where id = 1;

-- 2
update pizzeria set rating = 2 where id = 2;

-- 1
update pizzeria set rating = 2 where id = 2;

-- 2 
update pizzeria set rating = 3 where id = 1;

-- 1-2
commit transaction;

-- 1
select * from pizzeria where id in (1, 2);
