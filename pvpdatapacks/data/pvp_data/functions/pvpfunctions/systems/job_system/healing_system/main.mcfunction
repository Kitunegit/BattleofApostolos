scoreboard players remove @s[scores={healing_cool=1..}] healing_cool 1
execute if score @s healing_cool matches ..0 if score @s generic.max_health > @s Health run function pvp_data:pvpfunctions/systems/job_system/healing_system/heel