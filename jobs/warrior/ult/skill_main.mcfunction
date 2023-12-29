execute if score @s warrior_ult_timer matches 100 at @s run playsound block.anvil.land player @a[distance=..10] ~ ~ ~ 0.7 0.5
execute if score @s warrior_ult_timer matches 80 at @s run playsound block.anvil.land player @a[distance=..10] ~ ~ ~ 0.7 0.7
execute if score @s warrior_ult_timer matches 60 at @s run playsound block.anvil.land player @a[distance=..10] ~ ~ ~ 0.7 0.8
execute if score @s warrior_ult_timer matches 40 at @s run playsound block.anvil.land player @a[distance=..10] ~ ~ ~ 0.7 1
execute if score @s warrior_ult_timer matches 20..170 if entity @s[nbt={HurtTime:1s}] at @s run effect clear @s slowness
execute if score @s warrior_ult_timer matches 20..170 if entity @s[nbt={HurtTime:1s}] at @s run effect clear @s jump_boost
execute if score @s warrior_ult_timer matches 20..170 if entity @s[nbt={HurtTime:1s}] at @s run scoreboard players set @s ult_cool 60
execute if score @s warrior_ult_timer matches 20..170 if entity @s[nbt={HurtTime:1s}] at @s run playsound ui.button.click player @a[distance=..10]
execute if score @s warrior_ult_timer matches 20..170 if entity @s[nbt={HurtTime:1s}] run scoreboard players reset @s warrior_ult_timer
execute if score @s warrior_ult_timer matches 20..170 at @s run particle block redstone_block ~ ~ ~ 2 0.75 2 0.1 45
execute if score @s warrior_ult_timer matches 20 run effect clear @s slowness
execute if score @s warrior_ult_timer matches 20 run effect clear @s jump_boost
execute if score @s warrior_ult_timer matches 20 at @s run particle dust 0.494 0.212 0.02 1.2 ~ ~0.5 ~ 2 1.25 2 1 60 force
execute if score @s warrior_ult_timer matches 20 at @s run playsound minecraft:item.trident.throw player @a[distance=..10] ~ ~ ~ 1 1.2
execute if score @s warrior_ult_timer matches 20 run effect give @s levitation 1 127 true
execute if score @s warrior_ult_timer matches 10 run effect give @s levitation 1 255 true
execute if score @s warrior_ult_timer matches 10 at @s run summon marker ~ ~50 ~ {Tags:[warrior_jump_hover_ult]}
execute if score @s warrior_ult_timer matches 2..10 at @e[tag=warrior_jump_hover_ult,type=marker] run tp @s ~ ~-50 ~
execute if score @s warrior_ult_timer matches 1 run scoreboard players set $strength delta.api.launch 160000
execute if score @s warrior_ult_timer matches 1 at @s rotated ~ 90 run function delta:api/launch_looking
execute if score @s warrior_ult_timer matches 1 run tag @s add warrior_jump_hover_ult

scoreboard players remove @s warrior_ult_timer 1