tag @s add warrior_skill_pl
execute if score @s warrior_health_per matches 1 at @s rotated ~ 0 positioned ^ ^ ^5 as @e[tag=player,distance=..5,tag=!warrior_skill_pl] run damage @s 25 player_attack by @e[scores={warrior_health_per=1},limit=1]
execute if score @s warrior_health_per matches 2 at @s rotated ~ 0 positioned ^ ^ ^5 as @e[tag=player,distance=..5,tag=!warrior_skill_pl] run damage @s 20 player_attack by @e[scores={warrior_health_per=2},limit=1]
execute if score @s warrior_health_per matches 3 at @s rotated ~ 0 positioned ^ ^ ^5 as @e[tag=player,distance=..5,tag=!warrior_skill_pl] run damage @s 18 player_attack by @e[scores={warrior_health_per=3},limit=1]
execute if score @s warrior_health_per matches 4 at @s rotated ~ 0 positioned ^ ^ ^5 as @e[tag=player,distance=..5,tag=!warrior_skill_pl] run damage @s 15 player_attack by @e[scores={warrior_health_per=4},limit=1]
execute if score @s warrior_health_per matches 5 at @s rotated ~ 0 positioned ^ ^ ^5 as @e[tag=player,distance=..5,tag=!warrior_skill_pl] run damage @s 12 player_attack by @e[scores={warrior_health_per=5},limit=1]
execute if score @s warrior_health_per matches 6 at @s rotated ~ 0 positioned ^ ^ ^5 as @e[tag=player,distance=..5,tag=!warrior_skill_pl] run damage @s 10 player_attack by @e[scores={warrior_health_per=6},limit=1]
tag @s remove warrior_skill_pl