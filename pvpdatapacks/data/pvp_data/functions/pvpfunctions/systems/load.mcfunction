scoreboard objectives add effect_num_count dummy
say reload!
execute as @a at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
function pvp_data:pvpfunctions/systems/job_system/load
function pvp_data:pvpfunctions/systems/status/load
function pvp_data:pvpfunctions/systems/advancements/load
say load.mcfunctionがロードされました

# 消費アイテム関連
    scoreboard objectives add system.consume_item.time_since_start_use dummy

    scoreboard objectives add system.consume_item.using_time dummy

    scoreboard objectives add system.consume_item.time_required dummy

    scoreboard objectives add system.consume_item.cool_time dummy
