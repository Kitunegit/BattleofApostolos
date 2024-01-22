execute at @a[tag=wizard.skill_attack] run tag @e[tag=player,tag=!wizard.skill_attack,limit=1,sort=nearest,distance=..4] add wizard.skill_trgt
effect give @e[tag=wizard.skill_trgt] blindness 5 1 true

scoreboard players operation $temporary skill_2_count = @e[tag=wizard.skill_trgt] generic.speed
scoreboard players operation $keep skill_2_count = @e[tag=wizard.skill_trgt] generic.speed
execute if score $temporary skill_2_count matches 0 run scoreboard players set $temporary skill_2_count 100
scoreboard players operation $temporary skill_2_count *= $3 skill_2_count
scoreboard players operation $temporary skill_2_count /= $10 skill_2_count
execute store result storage temporary: value.apply_num float 1 run scoreboard players get $temporary skill_2_count
data modify storage temporary: value.apply_effect set value "generic.speed"
execute as @e[tag=wizard.skill_trgt] run function pvp_data:pvpfunctions/systems/status/apply with storage temporary: value

schedule function pvp_data:pvpfunctions/jobs/wizard/skill/3/clear_debuff 5s append

execute as @a[tag=wizard.skill_attack] at @s run particle dust 0 0 0 3 ~ ~ ~ 2 2 2 0.1 200
execute as @a[tag=wizard.skill_attack] at @s run playsound block.beacon.power_select player @a[distance=..10] ~ ~ ~ 1 1

data remove storage temporary: value