#> pvp_data:pvpfunctions/jobs/guardian/shield/blocked
#
# シールドで防いだ時に呼び出されます
#
# @internal
# 演出
    execute at @s run playsound minecraft:entity.zombie.attack_iron_door player @a[distance=..10] ~ ~ ~ 0.2 0.8
# 使用回数を減らす
    scoreboard players add @s guardian.shield_count 1
# 耐久値を下げる
    item modify entity @s weapon.offhand pvp_data:system/tool_damage/apply_damage_12
# 使用回数が無くなってた居たら破壊関数に飛ばす
    execute if score @s guardian.shield_count matches 12.. run function pvp_data:pvpfunctions/jobs/guardian/shield/break