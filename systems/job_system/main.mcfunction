execute as @a[scores={jobscore=8}] run function pvp_data:pvpfunctions/jobs/guardian/main
execute as @a[scores={jobscore=7}] run function pvp_data:pvpfunctions/jobs/archer/main
execute as @a[scores={jobscore=6}] run function pvp_data:pvpfunctions/jobs/assassin/main
execute as @a[scores={jobscore=3}] run function pvp_data:pvpfunctions/jobs/knight/main
execute as @a[scores={jobscore=0..}] run function pvp_data:pvpfunctions/systems/job_system/ult_system/main


tag @a add player
scoreboard players remove @a[scores={skill_1_cool=1..}] skill_1_cool 1
scoreboard players remove @a[scores={skill_2_cool=1..}] skill_2_cool 1
scoreboard players remove @a[scores={special_cool=1..}] special_cool 1

execute as @a if predicate pvp_data:sneaking run scoreboard players add @s sneaking 1
execute as @a unless predicate pvp_data:sneaking run scoreboard players set @s sneaking 0