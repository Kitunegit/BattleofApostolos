execute if score @s assassin_ult_charge matches 90..110 at @s run particle dust 0 0 0 1 ~ ~1 ~ 0.8 0.8 0.8 0.2 30
execute if score @s assassin_ult_charge matches 60..90 at @s run particle dust 0.161 0.016 0.259 1 ~ ~1 ~ 0.8 0.8 0.8 0.2 30
execute if score @s assassin_ult_charge matches 40..60 at @s run particle dust 0.329 0.008 0.541 1 ~ ~1 ~ 0.8 0.8 0.8 0.2 30
execute if score @s assassin_ult_charge matches 10..40 at @s run particle dust 0.596 0 0.992 1 ~ ~1 ~ 0.8 0.8 0.8 0.2 30


execute if score @s assassin_ult_charge matches 110 at @s run playsound block.anvil.land player @a[distance=..10] ~ ~ ~ 1 1
execute if score @s assassin_ult_charge matches 90 at @s run playsound entity.experience_orb.pickup player @a[distance=..10] ~ ~ ~ 1 0.7
execute if score @s assassin_ult_charge matches 70 at @s run playsound entity.experience_orb.pickup player @a[distance=..10] ~ ~ ~ 1 0.8
execute if score @s assassin_ult_charge matches 50 at @s run playsound entity.experience_orb.pickup player @a[distance=..10] ~ ~ ~ 1 0.9
execute if score @s assassin_ult_charge matches 30 at @s run playsound entity.experience_orb.pickup player @a[distance=..10] ~ ~ ~ 1 1.0
execute if score @s assassin_ult_charge matches ..10 at @s run playsound entity.player.attack.nodamage player @a[distance=..10] ~ ~ ~ 1 1.8
execute if score @s assassin_ult_charge matches ..10 at @s run playsound entity.player.attack.crit player @a[distance=..10] ~ ~ ~ 1 1
execute if score @s assassin_ult_charge matches ..10 at @s run particle dust -1 0 -1 3 ~ ~1 ~ 1 1 1 0.2 10
execute if score @s assassin_ult_charge matches ..10 at @s run particle sweep_attack ~ ~ ~ 1 1 1 0.2 2
execute if score @s assassin_ult_charge matches ..10 at @s rotated ~ 0 positioned ^ ^ ^1 if block ~ ~ ~ air run tp @s ^ ^ ^0.25
execute if score @s assassin_ult_charge matches ..10 at @s rotated ~ 0 positioned ^ ^ ^0.75 if block ~ ~ ~ air run tp @s ^ ^ ^0.25
execute if score @s assassin_ult_charge matches ..10 at @s rotated ~ 0 positioned ^ ^ ^0.50 if block ~ ~ ~ air run tp @s ^ ^ ^0.25
execute if score @s assassin_ult_charge matches ..10 at @s rotated ~ 0 positioned ^ ^ ^0.25 if block ~ ~ ~ air run tp @s ^ ^ ^0.25
execute if score @s assassin_ult_charge matches ..10 at @s if entity @e[tag=player,distance=0.1..2,limit=1] run playsound minecraft:block.sculk_shrieker.shriek player @a[distance=..10] ~ ~ ~ 5
execute if score @s assassin_ult_charge matches ..10 at @s run damage @e[tag=player,distance=0.1..2,limit=1] 35000 player_attack by @s
scoreboard players remove @s assassin_ult_charge 1