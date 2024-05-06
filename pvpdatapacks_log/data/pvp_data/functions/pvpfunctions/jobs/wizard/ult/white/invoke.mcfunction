#> pvp_data:pvpfunctions/jobs/wizard/ult/white/invoke
#
# 黒ウルトスキル発動処理
#
# @internal

# 演出
    execute at @s run playsound minecraft:block.enchantment_table.use player @a[distance=..30] ~ ~ ~ 5 1
    execute at @s run playsound minecraft:block.beacon.power_select player @a[distance=..30] ~ ~ ~ 5 2
    execute at @s run playsound minecraft:block.enchantment_table.use player @a[distance=..30] ~ ~ ~ 1 0.8
    execute at @e[tag=wizard.ult_target] run particle minecraft:block minecraft:sculk ~ ~ ~ 0.4 0.8 0.4 0.05 150
# 回復&バフ
    function pvp_data:pvpfunctions/systems/status/effect/apply {name:generic.defense,depth:500,duration:100,overwrite:false}
    # 回復処理
        scoreboard players operation @s ult_count = @s Health
        scoreboard players set $temp ult_count 100
        scoreboard players operation @s ult_count *= $temp ult_count
        scoreboard players set $temp ult_count 2000
        scoreboard players operation @s ult_count += $temp ult_count
        scoreboard players operation @s ScoreToHealth = @s ult_count
# リセット
    scoreboard players reset $temp ult_count
    scoreboard players reset @s ult_count