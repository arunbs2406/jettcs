{{
    config (materialized = 'incremental',unique_key = 'nation_id')
}}

with nation as 
(
    select 
        nation_id ,
        region_id ,
	    name,
	    comment,
        create_timestamp
    from {{ref('stg_nations')}}
    {% if is_incremental() %}
    where create_timestamp > (select max(create_timestamp) from {{this}})
    {% endif%}
)
select * from nation