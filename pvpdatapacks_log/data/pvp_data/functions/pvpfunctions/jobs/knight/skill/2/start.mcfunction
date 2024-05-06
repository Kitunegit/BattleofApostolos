
#発動時演出
    playsound entity.experience_bottle.throw player @s

    item modify entity @s hotbar.2 pvp_data:system/tool_damage/set_damage

#後処理
    scoreboard players set @s skill_2_cool 600
    scoreboard players set @s skill_2_count 400
    scoreboard players set @s r_click 0 