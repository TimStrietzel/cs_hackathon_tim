

  create or replace view `y42-solution-engineering`.`cs_hackathon_tim`.`my_second_dbt_model`
  OPTIONS()
  as -- Use the `ref` function to select from other models

select *
from `y42-solution-engineering`.`cs_hackathon_tim`.`my_first_dbt_model`
where id = 1;

