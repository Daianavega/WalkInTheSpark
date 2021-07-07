with dim_date as (
  
    select Month, Date from {{ ref('dim_Date')}}
),
 
weather as (
 
    select * from {{ ref('dim_Weather')}}
 
    left join dim_date using (date)
 
),
 
complaint as (
 
    select * from {{ ref('dim_Complaint') }}
 
    left join weather using (Date)
    left join {{ ref('dim_Address') }} using (recordNumber)
),
 
final as (
    select *
    from complaint
)
 
select * from final
order by date