#検知
execute if predicate pvp_data:r_click/cmd52 if score @s skill_1_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/dark_scientist/skill/2/skill_start
#詠唱中処理
execute if score @s dark_scientist_skill2_charge matches 1.. run function pvp_data:pvpfunctions/jobs/dark_scientist/skill/2/skill_main