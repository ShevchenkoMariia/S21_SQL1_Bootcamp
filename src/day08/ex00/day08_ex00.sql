-- 1
begin transaction;

select name, rating
  from pizzeria
 where name = 'Pizza Hut';

update pizzeria
   set rating = 5
 where name = 'Pizza Hut';

select name, rating
  from pizzeria
 where name = 'Pizza Hut';

-- 2
select name, rating
  from pizzeria
 where name = 'Pizza Hut';

-- 1
commit transaction;

-- 2
select name, rating
  from pizzeria
 where name = 'Pizza Hut';
