#> pvp_data:pvpfunctions/jobs/guardian/shield/blocked
#
# シールドで防いだ時に呼び出されます
#
# @internal
# 演出
    execute at @s run playsound minecraft:entity.zombie.attack_iron_door player @a[distance=..10] ~ ~ ~ 0.2 0.8
    execute if score @s guardian.shield_count matches ..6 at @s run playsound minecraft:block.anvil.land player @s ~ ~ ~ 0.2 1.51
# 使用回数を減らす
    scoreboard players remove @s guardian.shield_count 1
# 耐久値を下げる
    item modify entity @s weapon.offhand pvp_data:system/tool_damage/apply_damage_12
# 使用回数が無くなってた居たら破壊関数に飛ばす
    execute if score @s guardian.shield_count matches ..0 as @s[tag=!guardian.shield_strong] run function pvp_data:pvpfunctions/jobs/guardian/shield/break
    execute if score @s guardian.shield_count matches ..0 as @s[tag=guardian.shield_strong] run function pvp_data:pvpfunctions/jobs/guardian/shield/break_strong