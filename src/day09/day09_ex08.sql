create or replace function fnc_fibonacci(pstop integer = 10)
returns table(num integer) as $$
	with recursive cte_fibonacci(n1, n2) as (
		values(0, 1)
		union all
		(
			select n2, n1+n2 from cte_fibonacci
			where n2 < pstop
		)
	)
	select n1 from cte_fibonacci;
$$ language sql;

select * from fnc_fibonacci(100);
select * from fnc_fibonacci();

