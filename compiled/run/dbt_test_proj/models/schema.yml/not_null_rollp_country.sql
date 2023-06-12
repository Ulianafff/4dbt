select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select country
from `manakova`.`factsales_fs_output`.`rollp`
where country is null



      
    ) dbt_internal_test