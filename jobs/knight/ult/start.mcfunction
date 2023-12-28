
execute at @s positioned ~ ~1 ~ run summon marker ^ ^ ^1 {Tags:[knight_ult]}
execute at @e[type=marker,tag=knight_ult,tag=!knight_ult_tag] rotated as @s run tp @e[type=marker,tag=knight_ult,tag=!knight_ult_tag] ~ ~ ~ facing ^ ^ ^1


playsound entity.blaze.shoot player @a[distance=..7] ~ ~ ~ 0.8 1.3
playsound entity.player.attack.sweep player @a[distance=..7] ~ ~ ~ 0.8 1
playsound entity.ender_dragon.flap player @a[distance=..7] ~ ~ ~ 0.2 0.3
scoreboard players set @s ult_cool 120