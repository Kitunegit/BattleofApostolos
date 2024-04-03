#> pvp_data:pvpfunctions/jobs/knight/skill/1/start
#
# 騎士スキル1開始処理
#
# @within function pvp_data:pvpfunctions/jobs/knight/skill/1/main

# 発動時演出
    execute at @s run playsound block.anvil.land player @a[distance=..10] ~ ~ ~ 0.5 2
    execute at @s run particle crit ~ ~1 ~ 1 1 1 0 80 force
    execute at @s run particle dust 0 100000000 100000000 1 ~ ~1 ~ 1 1.3 1 0 80 force
    item modify entity @s hotbar.1 pvp_data:system/tool_damage/set_damage

# 発動効果付与

    function pvp_data:pvpfunctions/systems/status/effect/apply {name:generic.attack_speed,depth:89,duration:200,overwrite:false}
    function pvp_data:pvpfunctions/systems/status/effect/apply {name:generic.speed,depth:-2,duration:200,overwrite:false}

# 後処理
    scoreboard players set @s skill_1_cool 500
    scoreboard players set @s skill_1_count 200
