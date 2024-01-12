scoreboard players reset @s assassin_ult_charge
effect clear @s weakness
effect clear @s blindness
effect clear @s slowness
effect clear @s minecraft:jump_boost
kill @e[type=marker,tag=assassin_ult_trgt]
execute at @s run playsound ui.button.click player @a[distance=..20] ~ ~ ~ 1 1.2