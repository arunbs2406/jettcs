
with nation as 
(
    select 
        N_NATIONKEY as nation_id ,
        N_REGIONKEY as region_id ,
	    N_NAME as name,
	    N_COMMENT as comment,
        current_timestamp as create_timestamp
    from sourcedb.mk_mall.nations
)
select * from nation