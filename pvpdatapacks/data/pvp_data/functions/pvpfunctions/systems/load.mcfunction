scoreboard objectives add effect_num_count dummy
say reload!
execute as @a at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
function pvp_data:pvpfunctions/systems/job_system/load
function pvp_data:pvpfunctions/systems/status/load
function pvp_data:pvpfunctions/systems/advancements/load
say load.mcfunctionがロードされました