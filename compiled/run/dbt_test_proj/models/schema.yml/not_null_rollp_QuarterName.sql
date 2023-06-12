select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select QuarterName
from `manakova`.`factsales_fs_output`.`rollp`
where QuarterName is null



      
    ) dbt_internal_test