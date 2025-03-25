--написано что сортировка не требуется, но без неё вывод не соответствует примеру в задании
set enable_seqscan to on; --команда включает последовательное сканирование
explain analyze --команда позволяет получить план выполнения запроса и информацию о его выполнении
select
        m.pizza_name as pizza_name,
        pz.name as pizzeria_name
from menu m left join pizzeria pz
        on m.pizzeria_id=pz.id
order by 1, 2 desc;

set enable_seqscan to off;
explain analyze
select
        m.pizza_name as pizza_name,
        pz.name as pizzeria_name
from menu m left join pizzeria pz
        on m.pizzeria_id=pz.id
order by 1, 2 desc;
