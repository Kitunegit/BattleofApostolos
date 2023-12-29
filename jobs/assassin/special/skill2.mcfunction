execute at @s run playsound entity.player.attack.knockback player @a[distance=..10] ~ ~ ~ 1.5 0.4
execute at @s run particle dust 0 0 0 0.25 ~ ~ ~ 2 2 2 2 50 force
execute at @s run particle explosion ~ ~ ~
damage @e[tag=assassin_sp_trgt,limit=1] 8 player_attack by @s
tag @e remove assassin_sp_trgt