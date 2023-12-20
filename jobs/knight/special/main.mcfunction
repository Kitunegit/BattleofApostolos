
    execute if predicate pvp_data:r_click/cmd3 if score @s special_cool matches ..0 if score @s r_click matches 1.. run tag @s add knight_special_switch
    execute as @s[tag=knight_special_switch] run scoreboard players add @s special_count 1
    execute as @s[scores={jobscore=3,special_count=1}] at @s positioned ^ ^ ^4 as @e[distance=..3.9,limit=3,tag=player] run tag @s add knight_special_target
    execute if entity @e[tag=knight_special_switch] as @s[scores={jobscore=3,special_count=1}] unless entity @e[tag=knight_special_target] run playsound entity.bat.death player @s ~ ~ ~ 0.6 1
    execute if  entity @e[tag=knight_special_switch] as @s[scores={jobscore=3,special_count=1}] unless entity @e[tag=knight_special_target] run execute if score @s special_count matches 1 run scoreboard players set @s special_cool 100
    execute if predicate pvp_data:r_click/cmd3 if score @s special_cool matches ..0 if score @s r_click matches 1.. run playsound block.bamboo_wood_button.click_on player @s

#発動時処理
        execute as @a if entity @s[tag=knight_special_switch] run function pvp_data:pvpfunctions/jobs/knight/special/switch


#待機処理
    execute as @s if entity @s[tag=!knight_special_switch] run scoreboard players set @s special_count 0
    execute as @s[scores={jobscore=3,special_cool=1}] run playsound item.armor.equip_iron player @s ~ ~ ~ 10 1
    execute as @s[scores={jobscore=3,special_cool=1}] run playsound item.armor.equip_iron player @s ~ ~ ~ 10 1
