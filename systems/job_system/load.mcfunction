
#スコア定義
    scoreboard objectives add jobscore dummy
    scoreboard objectives add r_click minecraft.used:minecraft.carrot_on_a_stick
    scoreboard objectives add sneaking dummy
    scoreboard objectives add skill_1_cool dummy
    scoreboard objectives add skill_2_cool dummy
    scoreboard objectives add special_cool dummy
    scoreboard objectives add special_count dummy

    scoreboard objectives add skill_1_con dummy
    scoreboard objectives add skill_2_con dummy
    scoreboard objectives add special_con dummy

    scoreboard players set $const skill_1_con 20
    scoreboard players set $const skill_2_con 20
    scoreboard players set $const special_con 20
    function pvp_data:pvpfunctions/jobs/knight/load
    function pvp_data:pvpfunctions/jobs/guardian/load
    function pvp_data:pvpfunctions/jobs/archer/load
    function pvp_data:pvpfunctions/jobs/assassin/load
    function pvp_data:pvpfunctions/jobs/warrior/load

    scoreboard objectives add death deathCount
    scoreboard objectives add Health health

#体力増加
    execute as @a run attribute @s generic.max_health base set 40
    effect give @a instant_health 1 100 true

execute as @a run attribute @s generic.max_health base set 40