#右クリ
    execute if predicate pvp_data:r_click/cmd3 if score @s special_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/knight/special/start
    execute if predicate pvp_data:r_click/cmd3 if score @s special_cool matches 1.. if score @s r_click matches 1.. at @s run playsound minecraft:block.note_block.bass player @a[distance=..5] ~ ~ ~ 2 1
    execute if predicate pvp_data:r_click/cmd3 if score @s special_cool matches 1.. if score @s r_click matches 1.. run scoreboard players set @s r_click 0
#タグ持ってたら常時カウント上昇
    execute as @s[tag=knight_special_switch] run scoreboard players add @s special_count 1

#発動時処理
    execute if entity @s[tag=knight_special_switch] if score @s special_count matches 1.. if entity @e[tag=knight_special_target] at @s run function pvp_data:pvpfunctions/jobs/knight/special/switch
#終了処理
    execute if score @s[scores={jobscore=3}] special_count matches 23.. run tag @s remove knight_special_switch
    execute if score @s[scores={jobscore=3}] special_count matches 23.. run tag @e[tag=player] remove knight_special_target

#待機処理
    execute at @s if entity @s[tag=!knight_special_switch] run scoreboard players set @s special_count 0
    execute at @s[scores={jobscore=3,special_cool=1}] run playsound item.armor.equip_iron player @s ~ ~ ~ 10 1
    execute at @s[scores={jobscore=3,special_cool=1}] run playsound item.armor.equip_iron player @s ~ ~ ~ 10 
    execute if score @s special_con matches 0 run clear @s stick{CustomModelData:34} 1