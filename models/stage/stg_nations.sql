{{
    config
    (
        materialized = 'view'
    )
}}
with nation as 
(
    select 
        N_NATIONKEY as nation_id ,
        N_REGIONKEY as region_id ,
	    N_NAME as name,
	    N_COMMENT as comment
    from sourcedb.mk_mall.nations
)
select * from nation