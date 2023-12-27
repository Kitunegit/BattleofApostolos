execute at @e[type=marker,tag=knight_ult,tag=!knight_ult_tag] rotated as @s run tp @e[type=marker,tag=knight_ult,tag=!knight_ult_tag] ~ ~ ~ facing ^ ^ ^1
tag @e[type=marker,tag=knight_ult] add knight_ult_tag

playsound entity.experience_orb.pickup player @s
scoreboard players set @s ult_cool 10

execute at @s positioned ~ ~1 ~ run summon marker ^ ^ ^1 {Tags:[knight_ult]}
