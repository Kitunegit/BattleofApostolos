execute at @s run particle dust 0 0 0 4 ^ ^ ^-3 2 2 2 1 120
execute at @s run playsound item.glow_ink_sac.use player @a[distance=..10] ~ ~ ~ 15 1
execute at @s run effect give @a[distance=..5] blindness 4 3 true
kill @s