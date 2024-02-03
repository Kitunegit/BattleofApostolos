#> pvp_data:pvpfunctions/jobs/knight/skill/2/buff
#
# 騎士スキル2バフ開始処理
#
# @within function pvp_data:pvpfunctions/jobs/knight/skill/2/act

# 発動演出
    execute at @s run particle dust 0.008 0.718 0.718 2 ~ ~0.2 ~ 1 1.5 1 0 100 force
    execute at @s run playsound minecraft:block.glass.break player @s
# 発動バフ
    function pvp_data:pvpfunctions/systems/status/effect/apply {name:generic.max_health,depth:-6,duration:200,overwrite:false}
    function pvp_data:pvpfunctions/systems/status/effect/apply {name:generic.attack,depth:400,duration:200,overwrite:false}