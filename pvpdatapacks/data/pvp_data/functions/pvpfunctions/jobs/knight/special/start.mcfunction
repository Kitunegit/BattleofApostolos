#発動者にタグを付ける
    tag @s add knight_special_switch
#敵をセット
    execute at @s positioned ^ ^ ^4 as @e[distance=..3.9,limit=3,tag=player] run tag @s add knight_special_target