execute positioned ^ ^ ^-5 run tag @e[distance=..4.99,sort=nearest,limit=1] add detected
effect give @e[tag=detected] glowing 1 1
execute if entity @e[tag=detected] run playsound entity.experience_orb.pickup player @s
effect clear @e[tag=!detected] glowing

tag @e[tag=detected] remove detected
