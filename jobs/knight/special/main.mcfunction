#右クリ
    execute if predicate pvp_data:r_click/cmd3 if score @s special_cool matches ..0 if score @s r_click matches 1.. run tag @s add knight_special_switch
#タグ持ってたら常時カウント上昇
    execute as @s[tag=knight_special_switch] run scoreboard players add @s special_count 1
#敵にタグ付け
    execute if score @s special_count matches 1 at @s positioned ^ ^ ^4 as @e[distance=..3.9,limit=3,tag=player] run tag @s add knight_special_target
#例外処理
    execute if entity @s[tag=knight_special_switch] as @s[scores={jobscore=3,special_count=1}] unless entity @e[tag=knight_special_target] run playsound minecraft:block.note_block.bass player @a ~ ~ ~ 2 1
    execute if predicate pvp_data:r_click/cmd3 if score @s special_cool matches ..0 if score @s r_click matches 1.. run playsound block.bamboo_wood_button.click_on player @s

#発動時処理
    execute if entity @s[tag=knight_special_switch] if score @s special_count matches 1.. if entity @e[tag=knight_special_target] at @s run function pvp_data:pvpfunctions/jobs/knight/special/switch

#発動後処理
    execute if entity @e[tag=knight_special_switch] as @s[scores={jobscore=3,special_count=1}] if entity @e[tag=knight_special_target] run execute if score @s special_count matches 1 run scoreboard players set @s special_cool 100
    execute if entity @e[tag=knight_special_switch] as @s[scores={jobscore=3,special_count=1}] if entity @e[tag=knight_special_target] run execute if score @s special_count matches 1 run item replace entity @s hotbar.8 with stick{CustomModelData:34,display:{Name:'{"text":"ガーディアンからとってきた","color":"blue","bold":true,"italic":false}',Lore:['{"text":"盾で突進！","color":"white","italic":false}','{"text":"全て破壊しつくせ！","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"大剣右クリで発動","color":"white","bold":true,"italic":false}]','[{"text":"\\uE010","color":"white","italic":false},{"text":"突進攻撃:","color":"white","bold":true,"italic":false},{"text":"5","color":"dark_green","bold":true,"italic":false}]','[{"text":"\\uE016","color":"white","italic":false},{"text":"スタン(鈍化)","color":"white","bold":true,"italic":false},{"text":"-100%","color":"dark_red","bold":true,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"前隙","color":"white","bold":false},{"text":"0:01","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"0:15","color":"dark_green","bold":false}]']}} 6

#終了処理
    execute if score @s[scores={jobscore=3}] special_count matches 23.. run tag @s remove knight_special_switch
    execute if score @s[scores={jobscore=3}] special_count matches 23.. run tag @e[tag=player] remove knight_special_target

#待機処理
    execute at @s if entity @s[tag=!knight_special_switch] run scoreboard players set @s special_count 0
    execute at @s[scores={jobscore=3,special_cool=1}] run playsound item.armor.equip_iron player @s ~ ~ ~ 10 1
    execute at @s[scores={jobscore=3,special_cool=1}] run playsound item.armor.equip_iron player @s ~ ~ ~ 10 
    execute if score @s special_con matches 0 run clear @s stick{CustomModelData:34} 1