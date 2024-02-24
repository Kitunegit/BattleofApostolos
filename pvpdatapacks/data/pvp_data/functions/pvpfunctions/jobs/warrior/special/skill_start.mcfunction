#> pvp_data:pvpfunctions/jobs/warrior/special/skill_start
#
# 戦士特殊攻撃開始処理
#
# @internal

# HPに応じてスコア割り振り
    execute if score @s Health matches 30..40 run scoreboard players set @s warrior_health_per 6
    execute if score @s Health matches 20..30 run scoreboard players set @s warrior_health_per 5
    execute if score @s Health matches 10..20 run scoreboard players set @s warrior_health_per 4
    execute if score @s Health matches 5..10 run scoreboard players set @s warrior_health_per 3
    execute if score @s Health matches 1..5 run scoreboard players set @s warrior_health_per 2
    execute if score @s Health matches 1 run scoreboard players set @s warrior_health_per 1
# 発動演出
    execute at @s run particle dust 1 0.4 0 1.2 ~ ~0.5 ~ 0.25 0.75 0.25 1 25 force
    function pvp_data:pvpfunctions/systems/status/effect/apply {name:generic.speed,depth:-10,duration:10,overwrite:false}
# 耐久値設定
    item modify entity @s hotbar.0 pvp_data:system/tool_damage/set_damage
    scoreboard players set @s special.ct_data 100
# スコア設定
    scoreboard players set @s special_count 10
    scoreboard players set @s special_cool 400
# 体力が1の時ボーナス処理
    execute if score @s warrior_health_per matches 1 run scoreboard players set @s special_count 6
    execute if score @s warrior_health_per matches 1 run scoreboard players set @s special_cool 300
    execute if score @s warrior_health_per matches 1 run scoreboard players set @s special.ct_data 75