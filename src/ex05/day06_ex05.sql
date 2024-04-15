COMMENT ON TABLE person_discounts IS 'shows discount';
COMMENT ON COLUMN person_discounts.id IS 'primary keys';
COMMENT ON COLUMN person_discounts.person_id IS 'Identifier person';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Identifier pizzeria';
COMMENT ON COLUMN person_discounts.discount IS 'percent discount';