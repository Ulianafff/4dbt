select 
    country,
    category,
    QuarterName,
    amnt,
    round(avg(amnt) over (partition by 1,2), 1) as avcc
from `manakova`.`factsales_fs_output`.`rollp`
where amnt < 320000