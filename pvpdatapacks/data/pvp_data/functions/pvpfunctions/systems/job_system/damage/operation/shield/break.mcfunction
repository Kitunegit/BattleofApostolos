#> pvp_data:pvpfunctions/systems/job_system/damage/operation/shield/break
#
# @within function pvp_data:pvpfunctions/systems/job_system/damage/operation/shield/

# 演出
    execute at @s run playsound block.anvil.destroy master @a ~ ~ ~ 3 1

    execute at @s run particle explosion ~ ~ ~ 0.4 0.8 0.4 0.0 5 force

    scoreboard players set @s damage.shield.durability 0
