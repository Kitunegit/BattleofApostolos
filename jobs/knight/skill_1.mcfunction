
#スキル1：片手剣の極意

    execute as @a[scores={jobscore=3,knight_skill_1=1,knight_skill_1_cool=..0}] at @s run playsound block.anvil.place master @s ~ ~ ~ 50 2
    scoreboard players set @a[scores={jobscore=3}] knight_skill_1 0 
    
    