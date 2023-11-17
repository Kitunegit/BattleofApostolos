execute if score @s ult_con matches 0..20 run scoreboard players remove @s ult_con 1
execute if score @s ult_con matches 0 run scoreboard players remove @s ult_cool 1
execute if score @s ult_con matches 0 run scoreboard players set @s ult_con 20

xp set @s 129 levels
execute store result score $Points XPBar run xp query @s points
scoreboard players operation $Diff XPBar = @s ult_cool
scoreboard players operation $Diff XPBar *= #300 XPBar
scoreboard players operation $Diff XPBar /= @s ult_cool_data
scoreboard players operation $Diff XPBar -= $Points XPBar





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