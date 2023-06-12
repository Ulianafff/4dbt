select 
    country,
    category,
    QuarterName,
    amnt,
    avg(amnt) over (partition by 1,2) as avcc
from {{ ref('rollp') }}
where amnt < 1000.0