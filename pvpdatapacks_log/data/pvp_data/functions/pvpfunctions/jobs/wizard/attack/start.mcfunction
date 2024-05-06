#> pvp_data:pvpfunctions/jobs/wizard/attack/start
#
# 魔導士通常攻撃開始処理
#
# @internal

# スコア付与
    scoreboard players set @s wizard_normal_burst 25
    scoreboard players set @s special_cool 100
    item modify entity @s hotbar.0 pvp_data:system/tool_damage/set_damage
# 黒攻撃の場合自傷
    execute if entity @s[tag=wizard_black] run function pvp_data:pvpfunctions/systems/job_system/damage/apply_fixed {damage:{amount: 3f, type: "pvp_data:wizard/wizard_normal_magic"},knockback:{}, target: "@s"}
    execute if entity @s[tag=wizard_black] run scoreboard players set @s healing_cool 200
    execute if entity @s[tag=wizard_black] at @s run playsound minecraft:entity.player.hurt_sweet_berry_bush player @s ~ ~ ~ 1 0.75
# MP消費
    scoreboard players remove @s passive_count 240