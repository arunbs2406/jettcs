with cte as 
(
   select  
   	R_REGIONKEY as region_id,
	R_NAME as name,
	R_COMMENT as comment
    from sourcedb.mk_mall.regions
)
select * from cte