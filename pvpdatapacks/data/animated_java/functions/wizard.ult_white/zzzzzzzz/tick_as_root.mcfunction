execute unless score @s aj.wizard.ult_white.rig_loaded = @s aj.wizard.ult_white.rig_loaded run function animated_java:wizard.ult_white/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:wizard.ult_white/zzzzzzzz/animations/tick
function #animated_java:wizard.ult_white/on_tick/as_root