with opp as (
    select *
    from {{ref('fct_opportunity')}}
),

user as (
    select *
    from {{ref('dim_user')}}
)



select 
	sum(opportunity_expected_revenue) as sum_expected_revenue
	,b.username 
from 
	opp a
left join
	user b
on
	a.opportunity_owner_id = b.user_id 
group by username