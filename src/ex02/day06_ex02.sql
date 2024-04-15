select
  person.name,
  menu.pizza_name,
  menu.price,
  cast(menu.price * (1 - (person_discounts.discount/100)) as integer) as discount_price,
  pizzeria.name
from person_order
join menu on menu.id = person_order.menu_id
join pizzeria on menu.pizzeria_id = pizzeria.id
join person on person_order.person_id = person.id
join person_discounts on person_discounts.person_id = person_order.person_id and
             person_discounts.pizzeria_id = menu.pizzeria_id
order by 1, 2