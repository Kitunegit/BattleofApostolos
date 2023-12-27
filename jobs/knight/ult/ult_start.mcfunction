execute at @e[type=marker,tag=knight_ult,scores={knight_ult_count=..1}] rotated as @s run tp @e[type=marker,tag=knight_ult,scores={knight_ult_count=..1}] ~ ~ ~ facing ^ ^ ^1

playsound entity.experience_orb.pickup player @s
scoreboard players set @s ult_cool 10

execute at @s positioned ~ ~1 ~ run summon marker ^ ^ ^1 {Tags:[knight_ult]}
