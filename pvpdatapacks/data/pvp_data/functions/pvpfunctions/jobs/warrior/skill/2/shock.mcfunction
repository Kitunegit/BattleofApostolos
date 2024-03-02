#> pvp_data:pvpfunctions/jobs/warrior/skill/2/fall_ground
#
# 戦士スキル2落下処理
#
# @internal


# 自爆回避
    tag @s add warrior.no_shock
# 演出
    execute at @s run particle cloud ~ ~ ~ 2 0.75 2 0.4 45
    execute at @s run particle cloud ~ ~ ~ 2 0.75 2 0.1 45
    execute at @s run playsound entity.player.attack.knockback player @a[distance=..10] ~ ~ ~ 3 0.1
# KB    
    execute at @s if entity @a[distance=..2,tag=!warrior.no_shock] run scoreboard players set $strength delta.api.launch 10000
    execute at @s as @a[distance=..2,tag=!warrior.no_shock,tag=player] at @s rotated as @e[tag=warrior.no_shock,tag=player,limit=1] rotated ~ -70 run function delta:api/launch_looking
# リセット
    tag @s remove warrior.no_shock