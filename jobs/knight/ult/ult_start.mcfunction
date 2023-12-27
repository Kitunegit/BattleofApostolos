
execute at @s positioned ~ ~1 ~ run summon marker ^ ^ ^1 {Tags:[knight_ult]}
execute at @e[type=marker,tag=knight_ult,tag=!knight_ult_tag] rotated as @s run tp @e[type=marker,tag=knight_ult,tag=!knight_ult_tag] ~ ~ ~ facing ^ ^ ^1


playsound entity.experience_orb.pickup player @s
scoreboard players set @s ult_cool 10


