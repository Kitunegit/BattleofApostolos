#検知
execute if predicate pvp_data:r_click/cmd52 if score @s skill_1_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/dark_scientist/skill/2/skill_start
#詠唱中処理
execute if score @s dark_scientist_skill2_charge matches 1.. run scoreboard players remove @s dark_scientist_skill2_charge 1
execute if score @s dark_scientist_skill2_charge matches 1 run function pvp_data:pvpfunctions/jobs/dark_scientist/skill/2/skill_fin
#デバフ終了処理
execute if score @s dark_scientist_skill_2_debuff_time matches 1.. run scoreboard players remove @s dark_scientist_skill_2_debuff_time 1
execute if score @s dark_scientist_skill_2_debuff_time matches 1 run execute as @e[tag=dark_scientist_skill_2_spead_debuff] run scoreboard players operation @s generic.speed += @s dark_scientist_skill_2_spead_debuff
execute if score @s dark_scientist_skill_2_debuff_time matches 1 run execute as @e[tag=dark_scientist_skill_2_damage_debuff] run scoreboard players add @s generic.attack 400