
#スキル1：片手剣の極意
    #使用検知
        tag @a[nbt={SelectedItem:{tag:{CustomModelData:31},id:"minecraft:carrot_on_a_stick"}},scores={knight_skill_1_cool=..0,knight_r_detect=1..}] add knight_skill_1

    #使用後処理
        execute at @a[tag=knight_skill_1] run playsound block.anvil.place player @a[tag=knight_skill_1] ~ ~ ~ 0.5 2
        execute at @a[tag=knight_skill_1] run scoreboard players set @s knight_skill_1_time 300
        execute at @a[tag=knight_skill_1] run particle crit ~ ~1 ~ 5 5 5 10 1
        execute at @a[tag=knight_skill_1] run particle dust 0.37 0.94 0.95 0.8 ~ ~1 ~ 1 1 1 10 2 normal
        execute as @a[scores={knight_skill_1_time=1..}] at @s run attribute @s minecraft:generic.attack_speed base set 60
        execute at @a[scores={knight_skill_1_time=1..}] run particle cloud ~ ~1 ~ 0.3 0.5 0.3 10 3 normal

    #クールダウン処理
        item replace entity @a[tag=knight_skill_1] hotbar.1 with barrier{CustomModelData:31} 31
        scoreboard players set @a[tag=knight_skill_1] knight_skill_1_cool 700
        scoreboard players set @a[tag=knight_skill_1] knight_r_detect 0
        execute as @a[scores={knight_skill_1_cool=1}] at @s run playsound block.fire.extinguish player @s ~ ~ ~ 0.5 0.8

    #他処理
        tag @a[tag=knight_skill_1] remove knight_skill_1
        scoreboard players set @a[scores={knight_r_detect=1..,knight_skill_1_cool=1..}] knight_r_detect 0
        scoreboard players remove @a[tag=knight_skill_1,scores={knight_skill_1_time=0..}] knight_skill_1_time 1

    #クールダウンカウント処理
        scoreboard players operation @a[scores={knight_skill_1_cool=1..}] knight_skill_1_cal = @a[scores={knight_skill_1_cool=1..}] knight_skill_1_cool
        scoreboard players operation @a[scores={knight_skill_1_cool=1..}] knight_skill_1_cal %= $item_cool_check knight_skill_1_cal
        execute if score @a[scores={knight_skill_1_cool=1..},limit=1] knight_skill_1_cal matches 0 run clear @a[scores={knight_skill_1_cool=1..}] barrier{CustomModelData:31} 1

        item replace entity @a[scores={knight_skill_1_cool=..0}] hotbar.1 with carrot_on_a_stick{CustomModelData:31}