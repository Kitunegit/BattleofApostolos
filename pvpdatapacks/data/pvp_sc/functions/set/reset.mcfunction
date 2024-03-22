function pvp_data:pvpfunctions/systems/status/effect/clear {name:generic.attack}
function pvp_data:pvpfunctions/systems/status/effect/clear {name:generic.defense}
function pvp_data:pvpfunctions/systems/status/effect/clear {name:generic.speed}
function pvp_data:pvpfunctions/systems/status/effect/clear {name:generic.max_health}
function pvp_data:pvpfunctions/systems/status/effect/clear {name:generic.healing_speed}
effect clear @s
clear @s
scoreboard players reset @s jobscore
scoreboard players set @s skill_1_cool 0
scoreboard players set @s skill_2_cool 0
scoreboard players set @s ult_cool 0
scoreboard players set @s special_cool 0
scoreboard players set @s generic.attack.base 0
scoreboard players set @s generic.defense.base 0
scoreboard players set @s generic.speed.base 100
scoreboard players set @s generic.max_health.base 40
scoreboard players set @s generic.healing_speed.base 100
scoreboard players set @s damage.shield.durability 0