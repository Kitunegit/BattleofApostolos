
#発動処理
execute if predicate pvp_data:r_click/cmd33 if score @s ult_cool matches ..-1 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/knight/ult/ult_start

execute if score @s ult_cool matches 0 run function pvp_data:pvpfunctions/jobs/knight/ult/ult_fin