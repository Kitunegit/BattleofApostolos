#> pvp_data:pvpfunctions/jobs/assassin/passive/reset
#
# 暗殺者パッシブ 発見度リセット
#
# @internal

# 発見度をリセット
    scoreboard players set @s passive_count 0
# デバフを付与 
    function pvp_data:pvpfunctions/systems/status/effect/apply {name:"generic.attack",depth:-400,duration:480,overwrite:true}
# 演出
    execute at @s run playsound minecraft:block.glass.break player @s ~ ~ ~ 1 0.1