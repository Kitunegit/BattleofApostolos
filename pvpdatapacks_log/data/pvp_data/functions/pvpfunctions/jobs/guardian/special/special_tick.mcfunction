#> pvp_data:pvpfunctions/jobs/guardian/special/special_tick
#
# 特殊攻撃の効果中常時実行処理です
#
# @internal

# カウントダウン
    scoreboard players remove @s special_count 1

# 前方にパーティクル
    execute if score @s special_count matches 34 at @s run tp @s ~ ~ ~ ~ 0
    execute if score @s special_count matches 15.. at @s rotated ~ 0 positioned ^ ^ ^1 run particle dust -1 0 0 0.75 ~ ~ ~ 0.25 0.25 0.25 0.25 5
    execute if score @s special_count matches 15.. at @s rotated ~ 0 positioned ^ ^ ^2 run particle dust -1 0 0 0.75 ~ ~ ~ 0.25 0.25 0.25 0.25 5
    execute if score @s special_count matches 15.. at @s rotated ~ 0 positioned ^ ^ ^3 run particle dust -1 0 0 0.75 ~ ~ ~ 0.25 0.25 0.25 0.25 5
    execute if score @s special_count matches 15.. at @s rotated ~ 0 positioned ^ ^ ^4 run particle dust -1 0 0 0.75 ~ ~ ~ 0.25 0.25 0.25 0.25 5
    execute if score @s special_count matches 15.. at @s rotated ~ 0 positioned ^ ^ ^5 run particle dust -1 0 0 0.75 ~ ~ ~ 0.25 0.25 0.25 0.25 5
# カウントダウン音声
    execute if score @s special_count matches 34 at @s run playsound item.shield.block player @a ~ ~ ~ 2.5 0.5
    execute if score @s special_count matches 25 at @s run playsound item.shield.block player @a ~ ~ ~ 2.5 0.9
    execute if score @s special_count matches 15 at @s run playsound item.shield.block player @a ~ ~ ~ 2.5 1.3
# 前方に飛ばす
    execute if score @s special_count matches 10..15 run function pvp_data:pvpfunctions/jobs/guardian/special/launch
# ダメージ
    execute if score @s special_count matches 8..15 at @s if entity @e[distance=0.1..3,tag=player,tag=!sp_hit] run playsound entity.iron_golem.repair player @a[distance=..5] ~ ~ ~ 1 0.8
    execute if score @s special_count matches 8..15 at @s run tag @e[distance=0.1..3,tag=player] add guardian.sp_hit
# 演出
    execute if score @s special_count matches 10..15 at @s run particle sweep_attack ~ ~ ~ 0.25 0 0.25 1 5
    execute if score @s special_count matches 8 at @s run tp @s @s
    execute if score @s special_count matches 10 at @s run particle minecraft:block oak_planks ~ ~0.15 ~ 1 1 1 1 35
    execute if score @s special_count matches 10 at @s run particle crit ~ ~0.15 ~ 1 1 1 1 35
    execute if score @s special_count matches 10 at @s run playsound entity.zombie.break_wooden_door player @a[distance=..20] ~ ~ ~ 0.5 1.5
# ダメージを与える
    execute if score @s special_count matches 10 run function pvp_data:pvpfunctions/jobs/guardian/special/apply_damage