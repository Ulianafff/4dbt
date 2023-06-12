select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select category
from `manakova`.`factsales_fs_output`.`rollp`
where category is null



      
    ) dbt_internal_test