effect give @s speed 1 0 true
tag @s add assassin
execute as @a[tag=!assassin] at @s if predicate pvp_data:look_assasin run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:18,Amplifier:1,Duration:2}]}