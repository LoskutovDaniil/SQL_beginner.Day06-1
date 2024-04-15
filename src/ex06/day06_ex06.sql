CREATE SEQUENCE seq_person_discounts;
SELECT SETVAL('seq_person_discounts', (SELECT COUNT(*) FROM person_discounts));
ALTER TABLE person_discounts
    ALTER COLUMN id SET DEFAULT NEXTVAL('seq_person_discounts');
	
-- SECOND VAR
-- create sequence seq_person_discounts start 1;
-- alter table person_discounts alter column id set default nextval('seq_person_discount
-- s');
-- select setval('seq_person_discounts', (select count(*)+1 from person_discounts))