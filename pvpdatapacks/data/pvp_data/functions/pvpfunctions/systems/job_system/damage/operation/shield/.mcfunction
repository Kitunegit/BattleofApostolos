#> pvp_data:pvpfunctions/systems/job_system/damage/operation/shield/
#
# @within function pvp_data:pvpfunctions/systems/job_system/damage/operation/

# シールドによる防御
    execute if score @s damage.shield.durability matches 1.. run playsound block.anvil.land master @a ~ ~ ~ 3 2

    execute if score @s damage.shield.durability matches 1.. at @s run particle crit ~ ~ ~ 0.4 0.8 0.4 0.0 20 force

    scoreboard players operation $temporary damage.apply-temporary = @s damage.apply-temporary

    scoreboard players operation @s damage.apply-temporary -= @s damage.shield.durability

    execute if score @s damage.apply-temporary matches ..-1 run scoreboard players set @s damage.apply-temporary 0

    scoreboard players operation @s damage.shield.durability -= $temporary damage.apply-temporary

    execute if score @s damage.shield.durability matches ..0 run function pvp_data:pvpfunctions/systems/job_system/damage/operation/shield/break
