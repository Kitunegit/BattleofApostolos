
#スキル1：片手剣の極意

    #クール明け処理
        execute as @a[scores={jobscore=3,knight_skill_1_cool=1}] at @s run playsound block.fire.extinguish master @s ~ ~ ~ 50
        execute as @a[scores={jobscore=3,knight_skill_1_cool=1..}] at @s run item replace entity @s hotbar.1 with barrier{CustomModelData:31} 36
        execute as @a[scores={jobscore=3,knight_skill_1_cool=..0}] at @s run item replace entity @s hotbar.1 with carrot_on_a_stick{CustomModelData:31}

    #使用後処理
        execute as @a[scores={jobscore=3,knight_skill_1=1,knight_skill_1_cool=..0}] at @s run scoreboard players set @s knight_skill_1_cool 700
        execute as @a[scores={jobscore=3,knight_skill_1=1}] at @s run playsound block.anvil.place master @s ~ ~ ~ 50 2
        scoreboard players set @a[scores={jobscore=3}] knight_skill_1 0 
    
    #クールタイム表示処理
        scoreboard players operation @a[scores={knight_skill_1_cool=1..}] knight_skill_1_cal = @a[scores={knight_skill_1_cool=1..}] knight_skill_1_cool
        scoreboard players operation @a[scores={knight_skill_1_cool=1..}] knight_skill_1_cal %= item_cool_check knight_skill_1_cal

        execute if score @a[scores={knight_skill_1_cool=1..},limit=1] knight_skill_1_cal matches 0 run clear @a[scores={knight_skill_1_cool=1..}] barrier{CustomModelData:31} 1
    