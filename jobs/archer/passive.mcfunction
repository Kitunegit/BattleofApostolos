scoreboard players remove @s archer_passive_cool 1
execute if score @s archer_passive_cool matches 0 if score @s archer_arrow_num matches ..14 if predicate pvp_data:50_rng run scoreboard players add @s archer_arrow_num 1
execute if score @s archer_passive_cool matches 0 run scoreboard players set @s archer_passive_cool 30