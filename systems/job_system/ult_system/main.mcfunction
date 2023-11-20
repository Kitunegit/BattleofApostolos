#1秒に1ずつクールを減らす
    execute if score @s ult_con matches 0..20 run scoreboard players remove @s ult_con 1
    execute if score @s ult_con matches 0 if score @s ult_cool matches 1.. run scoreboard players remove @s ult_cool 1
    execute if score @s ult_con matches 0 run scoreboard players set @s ult_con 20
#経験値バーの処理

    #経験値
        #数値をパーセント化する
        scoreboard players operation @s XPBar_con = @s ult_cool
        scoreboard players operation @s XPBar_con *= $100 XPBar_con
        scoreboard players operation @s XPBar_con /= @s ult_cool_data

       #経験値量調整
        xp set @s 27 levels
        execute store result score $Points XPBar run xp query @s points
        scoreboard players operation $Diff XPBar = @s XPBar_con
        scoreboard players operation $Diff XPBar -= $Points XPBar
        scoreboard players operation $Diff XPBar /= $6 XPBar
        scoreboard players operation $Points XPBar += $Diff XPBar
        #経験値代入
        xp set @s 0 points
        execute if score $Points XPBar matches 64.. run xp add @s 64 points
        execute if score $Points XPBar matches 64.. run scoreboard players remove $Points XPBar 64
        execute if score $Points XPBar matches 32.. run xp add @s 32 points
        execute if score $Points XPBar matches 32.. run scoreboard players remove $Points XPBar 32
        execute if score $Points XPBar matches 16.. run xp add @s 16 points
        execute if score $Points XPBar matches 16.. run scoreboard players remove $Points XPBar 16
        execute if score $Points XPBar matches 8.. run xp add @s 8 points
        execute if score $Points XPBar matches 8.. run scoreboard players remove $Points XPBar 8
        execute if score $Points XPBar matches 4.. run xp add @s 4 points
        execute if score $Points XPBar matches 4.. run scoreboard players remove $Points XPBar 4
        execute if score $Points XPBar matches 2.. run xp add @s 2 points
        execute if score $Points XPBar matches 2.. run scoreboard players remove $Points XPBar 2
        execute if score $Points XPBar matches 1.. run xp add @s 1 points
        execute if score $Points XPBar matches 1.. run scoreboard players remove $Points XPBar 1
        
xp set @s 0 levels
scoreboard players operation $Levels XPBar = @s ult_cool
execute if score $Levels XPBar matches 128.. run xp add @s 128 levels
execute if score $Levels XPBar matches 128.. run scoreboard players remove $Levels XPBar 128
execute if score $Levels XPBar matches 64.. run xp add @s 64 levels
execute if score $Levels XPBar matches 64.. run scoreboard players remove $Levels XPBar 64
execute if score $Levels XPBar matches 32.. run xp add @s 32 levels
execute if score $Levels XPBar matches 32.. run scoreboard players remove $Levels XPBar 32
execute if score $Levels XPBar matches 16.. run xp add @s 16 levels
execute if score $Levels XPBar matches 16.. run scoreboard players remove $Levels XPBar 16
execute if score $Levels XPBar matches 8.. run xp add @s 8 levels
execute if score $Levels XPBar matches 8.. run scoreboard players remove $Levels XPBar 8
execute if score $Levels XPBar matches 4.. run xp add @s 4 levels
execute if score $Levels XPBar matches 4.. run scoreboard players remove $Levels XPBar 4
execute if score $Levels XPBar matches 2.. run xp add @s 2 levels
execute if score $Levels XPBar matches 2.. run scoreboard players remove $Levels XPBar 2
execute if score $Levels XPBar matches 1.. run xp add @s 1 levels
execute if score $Levels XPBar matches 1.. run scoreboard players remove $Levels XPBar 1
scoreboard players reset $Levels XPBar
scoreboard players reset $Points XPBar
scoreboard players reset $Diff XPBar
stopsound @s player entity.player.levelup 