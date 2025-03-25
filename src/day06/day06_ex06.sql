create sequence seq_person_discounts as bigint start with 1 --создаем последовательность, которая будет начинаться с 1
owned by person_discounts.id; --указываем, что последовательность относится к столбику id
alter table person_discounts alter column id 
set default nextval('seq_person_discounts'); --значения для колонки будем брать из последовательности seq_person_discounts
-- устанавливаем текущее начало последовательности на значение +1 от последнего существующего значения в колонке id
select setval('seq_person_discounts', (select max(id)+1 from person_discounts)); 
