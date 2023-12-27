
playsound entity.experience_orb.pickup player @s
scoreboard players set @s ult_cool 10

execute at @s positioned ~ ~1 ~ run summon marker ^ ^ ^1 {Tags:[knight_ult]}
execute at @e[type=marker,tag=knight_ult] rotated as @s run tp @e[type=marker,tag=knight_ult] ~ ~ ~ facing ^ ^ ^1