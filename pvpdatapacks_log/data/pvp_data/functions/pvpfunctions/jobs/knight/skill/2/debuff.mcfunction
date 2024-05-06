#> pvp_data:pvpfunctions/jobs/knight/skill/2/debuff
#
# 騎士スキル2デバフ開始処理
#
# @within function pvp_data:pvpfunctions/jobs/knight/skill/2/act

# 発動演出(後半)
    execute at @s run particle dust 0.302 0.012 0.012 2 ~ ~0.2 ~ 1 1.5 1 0 100 force
    execute at @s run playsound entity.blaze.shoot player @s ~ ~ ~ 1 0.8

# 発動デバフ
    function pvp_data:pvpfunctions/systems/status/effect/apply {name:generic.attack,depth:-400,duration:200,overwrite:false}
    function pvp_data:pvpfunctions/systems/status/effect/apply {name:generic.defense,depth:-6,duration:200,overwrite:false}
