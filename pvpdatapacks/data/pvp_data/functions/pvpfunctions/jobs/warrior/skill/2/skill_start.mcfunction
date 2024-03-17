#発動演出
    execute at @s run particle dust 0.494 0.212 0.02 1.2 ~ ~0.5 ~ 2 1.25 2 1 60 force
    execute at @s run playsound minecraft:entity.breeze.charge player @a[distance=..10] ~ ~ ~ 1 0.8
    function pvp_data:pvpfunctions/systems/job_system/charge/apply {isMoving:false,isRotation:true,isCheckHealth:100000,duration:19}

#スコア設定
    item modify entity @s hotbar.2 pvp_data:system/tool_damage/set_damage
    scoreboard players set @s skill_2_count 30
    scoreboard players set @s skill_2_cool 400