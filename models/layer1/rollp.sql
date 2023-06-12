with cats as (
    select
        categoryid,
        category
    from `factsales.dimcategory`
),

cous as (
    select
        countryid,
        country
    from `factsales.dimcountry`
    where countryid < 31
),

ddate as (
    select * from `factsales.dimdate` dd
    where dd.Year = 2020
),

res as (
    select 
        cous.country,
        cats.category,
        ddate.QuarterName,
        sum(fs.amount)
    from `factsales.factsales` fs
    join cats on cats.categoryid = fs.categoryid
    join cous on cous.countryid = fs.countryid
    join ddate on ddate.dateid = fs.dateid
    group by rollup (1,2,3)
)

select * from res

