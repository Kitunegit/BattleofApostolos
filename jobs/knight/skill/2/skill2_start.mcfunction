
#発動時演出
    playsound entity.experience_bottle.throw player @s

item replace entity @s hotbar.2 with barrier{CustomModelData:31} 40

#後処理
    scoreboard players set @s skill_2_cool 800