tag @s add assassin
execute if entity @s[tag=assassin.passive_debuff] run scoreboard players remove @s generic.attack 400
execute if entity @s[tag=assassin.passive_debuff] run tag @s remove assassin.passive_debuff
execute as @a[tag=!assassin] at @s if predicate pvp_data:look_assasin at @a[tag=assassin] run scoreboard players remove @s generic.attack 400
execute as @a[tag=!assassin] at @s if predicate pvp_data:look_assasin at @a[tag=assassin] run tag @s add assassin.passive_debuff
execute as @a[tag=!assassin] at @s if predicate pvp_data:look_assasin as @e[tag=assassin] at @s run playsound block.note_block.bass player @s ~ ~ ~ 0.2 0.5
tag @a remove assassin