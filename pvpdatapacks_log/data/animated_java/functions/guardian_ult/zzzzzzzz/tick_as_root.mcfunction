execute unless score @s aj.guardian_ult.rig_loaded = @s aj.guardian_ult.rig_loaded run function animated_java:guardian_ult/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:guardian_ult/zzzzzzzz/animations/tick
function #animated_java:guardian_ult/on_tick/as_root