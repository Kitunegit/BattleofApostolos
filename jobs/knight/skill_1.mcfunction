
#スキル1：片手剣の極意
    execute as @a[scores={jobscore=3,knight_skill_1_cool=1..}] at @s run item replace entity @s hotbar.1 with barrier{CustomModelData:31}
    execute as @a[scores={jobscore=3,knight_skill_1_cool=..0}] at @s run item replace entity @s hotbar.1 with carrot_on_a_stick{CustomModelData:31}
    execute as @a[scores={jobscore=3,knight_skill_1=1,knight_skill_1_cool=..0}] at @s run scoreboard players set @s knight_skill_1_cool 700
    execute as @a[scores={jobscore=3,knight_skill_1=1,knight_skill_1_cool=..0}] at @s run playsound block.anvil.place master @s ~ ~ ~ 50 2
    scoreboard players set @a[scores={jobscore=3}] knight_skill_1 0 
    
    