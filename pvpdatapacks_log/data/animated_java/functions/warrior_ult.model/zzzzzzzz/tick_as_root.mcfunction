execute unless score @s aj.warrior_ult.model.rig_loaded = @s aj.warrior_ult.model.rig_loaded run function animated_java:warrior_ult.model/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:warrior_ult.model/zzzzzzzz/animations/tick
function #animated_java:warrior_ult.model/on_tick/as_root