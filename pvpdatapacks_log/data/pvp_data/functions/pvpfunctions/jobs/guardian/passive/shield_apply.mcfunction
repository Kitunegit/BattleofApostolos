#> pvp_data:pvpfunctions/jobs/guardian/passive/shield_apply
#
#  パッシブのシールド付与
#
# @internal

# シールド付与
    scoreboard players add @s damage.shield.durability 200
    scoreboard players set @s passive_cool 0
# 演出
    execute at @s run playsound minecraft:entity.zombie.attack_iron_door player @s ~ ~ ~ 0.4 0.4
    execute at @s run particle minecraft:trial_spawner_detection ~ ~ ~ 0.25 0.25 0.25 0.01 10