
    
    

with all_values as (

    select
        QuarterName as value_field,
        count(*) as n_records

    from `manakova`.`factsales_fs_output`.`rollp`
    group by QuarterName

)

select *
from all_values
where value_field not in (
    'Q1','Q2','Q3','Q4'
)


