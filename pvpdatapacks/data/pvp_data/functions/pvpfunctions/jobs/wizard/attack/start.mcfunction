scoreboard players set @s wizard_normal_burst 25
scoreboard players set @s wizard_normal_cool 1000
execute if entity @s[tag=wizard_black] run damage @s 3
execute if entity @s[tag=wizard_black] at @s run playsound minecraft:entity.player.hurt_sweet_berry_bush player @s ~ ~ ~ 1 0.75
scoreboard players add @s ult_cool 2