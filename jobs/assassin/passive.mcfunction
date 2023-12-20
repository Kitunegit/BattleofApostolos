tag @s add assassin
execute as @a[tag=!assassin] at @s if predicate pvp_data:look_assasin at @a[tag=assassin] run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:18,Amplifier:0,Duration:2}]}
execute as @a[tag=!assassin] at @s if predicate pvp_data:look_assasin as @e[tag=assassin] at @s run playsound block.note_block.bass player @s ~ ~ ~ 0.2 0.5
tag @a remove assassin