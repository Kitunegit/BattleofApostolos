execute as @a[scores={jobscore=8}] run function pvp_data:pvpfunctions/jobs/guardian/main
execute as @a[scores={jobscore=7}] run function pvp_data:pvpfunctions/jobs/archer/main
<<<<<<< HEAD
=======
execute as @a[scores={jobscore=6}] run function pvp_data:pvpfunctions/jobs/assassin/main
>>>>>>> origin/main
execute as @a[scores={jobscore=3}] run function pvp_data:pvpfunctions/jobs/knight/main
execute as @a[scores={jobscore=0..}] run function pvp_data:pvpfunctions/systems/job_system/ult_system/main

execute as @a run attribute @s generic.max_health base set 40

execute as @a if predicate pvp_data:sneaking run scoreboard players add @s sneaking 1
execute as @a unless predicate pvp_data:sneaking run scoreboard players set @s sneaking 0