{% test valid_billingstreet(model, column_name) %}

{{ config(severity = 'warn') }}

with validation as (

    select
        {{ column_name }} as billingstreet_field

    from {{ model }}

),

validation_errors as (

    select
        billingstreet_field

    from validation
    where billingstreet_field = 'some logic' or billingstreet_field is null 

)

select *
from validation_errors

{% endtest %}


