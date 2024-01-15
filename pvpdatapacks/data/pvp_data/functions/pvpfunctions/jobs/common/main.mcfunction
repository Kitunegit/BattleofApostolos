execute if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/common/is_jobs
execute if score @s skill_1_con matches 0 run clear @s barrier{CustomModelData:1} 1
execute if score @s skill_2_con matches 0 run clear @s barrier{CustomModelData:2} 1
execute if score @s special_con matches 0 run clear @s barrier{CustomModelData:4} 1