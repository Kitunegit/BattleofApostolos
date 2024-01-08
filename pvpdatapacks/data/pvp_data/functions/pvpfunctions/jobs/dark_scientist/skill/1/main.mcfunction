#検知
execute if predicate pvp_data:r_click/cmd51 if score @s skill_1_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/dark_scientist/skill/1/start
#詠唱中処理
execute if score @s dark_scientist_skill1_charge matches 1.. run scoreboard players remove @s dark_scientist_skill1_charge 1
execute if score @s dark_scientist_skill1_charge matches 1 run function pvp_data:pvpfunctions/jobs/dark_scientist/skill/1/fin