#発動演出
    execute at @s run playsound minecraft:entity.arrow.shoot player @a[distance=..10] ~ ~ ~ 0.5 1.2
    execute at @s run particle minecraft:crit ~ ~ ~ 0 0 0 0.5 15
#効果付与
    execute at @s run summon marker ~ ~ ~ {Tags:[black_eyes]}
    execute as @e[tag=black_eyes,type=marker] at @s rotated as @a[limit=1] run tp @s ^ ^ ^0.5
    execute as @e[tag=black_eyes,type=marker] at @s run tp @s ~ ~1 ~
    execute at @e[tag=black_eyes,type=marker] rotated as @s run tp @e[tag=black_eyes,type=marker] ~ ~ ~ facing ^ ^ ^1
#その他処理
    item replace entity @s hotbar.2 with barrier{CustomModelData:62} 15
    scoreboard players set @s assassin_skill_2_cool 300
    scoreboard players set @s r_click 0