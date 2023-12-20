
#パッシブ
    effect give @e[scores={jobscore=3}] strength infinite 0 true
#スキル1
    scoreboard objectives add knight_skill_1_cool dummy
    scoreboard objectives add knight_skill_1_con dummy
    scoreboard players set $const knight_skill_1_con 20
    
#スキル2
    scoreboard objectives add knight_skill_2_cool dummy
    scoreboard objectives add knight_skill_2_con dummy
    scoreboard players set $const knight_skill_1_con 20

#スペシャル
    scoreboard objectives add knight_special_cool dummy
    scoreboard objectives add knight_special_count dummy
    scoreboard objectives add knight_special_con dummy
    scoreboard players set $const knight_special_con 20