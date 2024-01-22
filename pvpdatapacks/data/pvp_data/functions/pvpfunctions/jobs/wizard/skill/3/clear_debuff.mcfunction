execute store result storage temporary: value.apply_num float 1 run scoreboard players get $keep skill_2_count
data modify storage temporary: value.apply_effect set value "generic.speed"
execute as @e[tag=wizard.skill_trgt] run function pvp_data:pvpfunctions/systems/status/apply with storage temporary: value
tag @e[tag=wizard.skill_trgt] remove wizard.skill_trgt