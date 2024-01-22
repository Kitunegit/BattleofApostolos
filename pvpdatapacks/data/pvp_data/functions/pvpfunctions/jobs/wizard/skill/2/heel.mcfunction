effect give @a[tag=wizard.skill_heel] instant_health 1 2 true
execute as @a[tag=wizard.skill_heel] at @s run particle dust 1 1 1 3 ~ ~ ~ 1 1 1 0.1 100
execute as @a[tag=wizard.skill_heel] at @s run playsound block.beacon.power_select player @a[distance=..10] ~ ~ ~ 1 2