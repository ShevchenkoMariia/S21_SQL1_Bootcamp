create or replace function func_minimum(variadic arr numeric[])
returns numeric AS $$
begin
    return (select min(value) from unnest(arr) as value);
end;
$$ language plpgsql;

SELECT func_minimum(VARIADIC arr => ARRAY[10.0, -1.0, 5.0, 4.4]);
