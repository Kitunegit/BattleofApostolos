$scoreboard players set $strength delta.api.launch $(power)
$execute at @s rotated ~ $(angle) run function delta:api/launch_looking
execute at @s run playsound entity.player.attack.sweep player @s ~ ~ ~
$execute at @s run particle explosion $(particle_position)
$execute at @s run particle dust 0 0.675 0 4 $(particle_position) 1 1 1 1 15