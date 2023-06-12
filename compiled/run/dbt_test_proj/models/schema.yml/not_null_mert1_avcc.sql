select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select avcc
from `manakova`.`factsales_fs_output`.`mert1`
where avcc is null



      
    ) dbt_internal_test