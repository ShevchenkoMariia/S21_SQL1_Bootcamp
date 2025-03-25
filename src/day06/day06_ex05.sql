comment on table person_discounts is 'Таблица содержит информацию о персональных скидках клиентов в соответствующих пиццериях';
comment on column person_discounts.id is 'Первичный ключ';
comment on column person_discounts.person_id is 'Внешний ключ для связи с таблицей person';
comment on column person_discounts.pizzeria_id is 'Внешний ключ для связи с таблицей pizzeria. Пиццерия, в которой есть скидка';
comment on column person_discounts.discount is 'Скидка в процентах дл я человека в соответствующей пиццерии';
