#> pvp_data:pvpfunctions/jobs/warrior/skill/1/skill_start 
#
# 戦士スキル1開始処理
#
# @internal

# 演出
    execute at @s run playsound item.shield.block player @a[distance=..10] ~ ~ ~ 1 0.8
    execute at @s run particle dust 0.667 0.212 0 2 ~ ~ ~ 0.5 0.8 0.5 1 4
    execute at @s run particle dust 1 0.608 0.157 2 ~ ~ ~ 0.31 0.01 0.33 1 4
# 効果付与
    function pvp_data:pvpfunctions/systems/status/effect/apply {name:generic.speed,depth:-1,duration:200,overwrite:false}
    function pvp_data:pvpfunctions/systems/status/effect/apply {name:generic.attack,depth:600,duration:200,overwrite:false}
    function pvp_data:pvpfunctions/systems/status/effect/apply {name:generic.attack_speed,depth:-30,duration:200,overwrite:false}
# その他処理
    item modify entity @s hotbar.1 pvp_data:system/tool_damage/set_damage
    scoreboard players set @s skill_1_count 200
    scoreboard players set @s skill_1_cool 700