
#スコア定義
    scoreboard objectives add jobscore dummy
    scoreboard objectives add r_click minecraft.used:minecraft.carrot_on_a_stick
    scoreboard objectives add sneaking dummy
    function pvp_data:pvpfunctions/jobs/knight/load
    function pvp_data:pvpfunctions/jobs/guardian/load
    function pvp_data:pvpfunctions/jobs/archer/load

#体力増加
    execute as @a run attribute @s generic.max_health base set 40
    effect give @a instant_health 1 100 true

execute as @a run attribute @s generic.max_health base set 40