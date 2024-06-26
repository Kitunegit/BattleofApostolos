#> pvp_data:pvpfunctions/jobs/warrior/special/skill_damage
#
# 戦士特殊攻撃ダメージ分岐処理
#
# @internal

# 自身を対象化から除外するためのタグ
    tag @s add warrior_skill_pl
# HPの割合に応じてダメージを変更させる
    execute if score @s warrior_health_per matches 6 at @s rotated ~ 0 positioned ^ ^ ^5 run function pvp_data:pvpfunctions/systems/job_system/damage/apply_fixed {damage: {amount: 10.0f,type: "pvp_data:warrior/warrior_sp"},knockback: {horizontal: 2.5d,vertical: 3.5d},target: "@e[tag=player,distance=..5,tag=!warrior_skill_pl]"}
    execute if score @s warrior_health_per matches 5 at @s rotated ~ 0 positioned ^ ^ ^5 run function pvp_data:pvpfunctions/systems/job_system/damage/apply_fixed {damage: {amount: 12.0f,type: "pvp_data:warrior/warrior_sp"},knockback: {horizontal: 2.5d,vertical: 3.5d},target: "@e[tag=player,distance=..5,tag=!warrior_skill_pl]"}
    execute if score @s warrior_health_per matches 4 at @s rotated ~ 0 positioned ^ ^ ^5 run function pvp_data:pvpfunctions/systems/job_system/damage/apply_fixed {damage: {amount: 15.0f,type: "pvp_data:warrior/warrior_sp"},knockback: {horizontal: 2.5d,vertical: 3.5d},target: "@e[tag=player,distance=..5,tag=!warrior_skill_pl]"}
    execute if score @s warrior_health_per matches 3 at @s rotated ~ 0 positioned ^ ^ ^5 run function pvp_data:pvpfunctions/systems/job_system/damage/apply_fixed {damage: {amount: 18.0f,type: "pvp_data:warrior/warrior_sp"},knockback: {horizontal: 2.5d,vertical: 3.5d},target: "@e[tag=player,distance=..5,tag=!warrior_skill_pl]"}
    execute if score @s warrior_health_per matches 2 at @s rotated ~ 0 positioned ^ ^ ^5 run function pvp_data:pvpfunctions/systems/job_system/damage/apply_fixed {damage: {amount: 20.0f,type: "pvp_data:warrior/warrior_sp"},knockback: {horizontal: 2.5d,vertical: 3.5d},target: "@e[tag=player,distance=..5,tag=!warrior_skill_pl]"}
    execute if score @s warrior_health_per matches 1 at @s rotated ~ 0 positioned ^ ^ ^5 run function pvp_data:pvpfunctions/systems/job_system/damage/apply_fixed {damage: {amount: 25.0f,type: "pvp_data:warrior/warrior_sp"},knockback: {horizontal: 2.5d,vertical: 3.5d},target: "@e[tag=player,distance=..5,tag=!warrior_skill_pl]"}
# タグリセット
    tag @s remove warrior_skill_pl