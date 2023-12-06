execute as @a[scores={jobscore=8}] run function pvp_data:pvpfunctions/jobs/guardian/main
execute as @a[scores={jobscore=7}] run function pvp_data:pvpfunctions/jobs/archer/main
execute as @a[scores={jobscore=6}] run function pvp_data:pvpfunctions/jobs/assassin/main
execute as @a[scores={jobscore=3}] run function pvp_data:pvpfunctions/jobs/knight/main
execute as @a[scores={jobscore=0..}] run function pvp_data:pvpfunctions/systems/job_system/ult_system/main

execute as @a[scores={jobscore=0..}] if score @s skill_1_cool matches 1.. run scoreboard players operation @s skill_1_con = @s skill_1_cool
execute as @a[scores={jobscore=0..}] if score @s skill_1_cool matches 1.. run scoreboard players operation @s skill_1_con %= $const skill_1_con
execute as @a[scores={jobscore=0..}] if score @s skill_1_con matches 0 at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.05 2

execute as @a[scores={jobscore=0..}] if score @s skill_2_cool matches 1.. run scoreboard players operation @s skill_2_con = @s skill_2_cool
execute as @a[scores={jobscore=0..}] if score @s skill_2_cool matches 1.. run scoreboard players operation @s skill_2_con %= $const skill_2_con
execute as @a[scores={jobscore=0..}] if score @s skill_2_con matches 0 at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.05 2

execute as @a[scores={jobscore=0..}] if score @s special_cool matches 1.. run scoreboard players operation @s special_con = @s special_cool
execute as @a[scores={jobscore=0..}] if score @s special_cool matches 1.. run scoreboard players operation @s special_con %= $const special_con

tag @a add player
scoreboard players set @a r_click 0
scoreboard players remove @a[scores={skill_1_cool=1..}] skill_1_cool 1
scoreboard players remove @a[scores={skill_2_cool=1..}] skill_2_cool 1
scoreboard players remove @a[scores={special_cool=1..}] special_cool 1

execute as @a if predicate pvp_data:sneaking run scoreboard players add @s sneaking 1
execute as @a unless predicate pvp_data:sneaking run scoreboard players set @s sneaking 0