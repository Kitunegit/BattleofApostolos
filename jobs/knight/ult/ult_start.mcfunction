
playsound entity.experience_orb.pickup player @s
scoreboard players set @s ult_cool 10

execute at @s positioned ~ ~1 ~ run summon marker ^ ^ ^1 {Tags:[knight_ult]}