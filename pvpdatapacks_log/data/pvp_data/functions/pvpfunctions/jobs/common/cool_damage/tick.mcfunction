#> pvp_data:pvpfunctions/jobs/common/cool_damage/tick
#
# CTダメージ
#
# @internal

    scoreboard players remove @a[scores={special_con=1..}] special_con 1
    scoreboard players remove @a[scores={skill_1_con=1..}] skill_1_con 1
    scoreboard players remove @a[scores={skill_2_con=1..}] skill_2_con 1
    execute if score @s special_con matches ..0 if score @s special_cool matches 1.. run function pvp_data:pvpfunctions/jobs/common/cool_damage/sp_damage
    execute if score @s skill_1_con matches ..0 if score @s skill_1_cool matches 1.. run function pvp_data:pvpfunctions/jobs/common/cool_damage/skill1_damage
    execute if score @s skill_2_con matches ..0 if score @s skill_2_cool matches 1.. run function pvp_data:pvpfunctions/jobs/common/cool_damage/skill2_damage