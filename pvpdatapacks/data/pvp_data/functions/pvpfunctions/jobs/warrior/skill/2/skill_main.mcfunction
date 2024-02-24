#> pvp_data:pvpfunctions/jobs/warrior/skill/2/skill_main
#
# 戦士スキル2効果中処理
#
# @internal

execute if score @s skill_2_count matches 15 run scoreboard players set $strength delta.api.launch 11000
execute if score @s skill_2_count matches 15 run execute rotated ~ -90 run function delta:api/launch_looking
execute if score @s skill_2_count matches 2 run scoreboard players set $strength delta.api.launch 50000
execute if score @s skill_2_count matches 2 at @s rotated ~ 90 run function delta:api/launch_looking
execute if score @s skill_2_count matches 1 run tag @s add warrior_jump_hover

scoreboard players remove @s skill_2_count 1