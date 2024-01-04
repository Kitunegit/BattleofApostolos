scoreboard players set @s r_click 0
scoreboard players set @s special_cool 100
item replace entity @s hotbar.8 with stick{CustomModelData:34,display:{Name:'{"text":"ガーディアンからとってきた","color":"blue","bold":true,"italic":false}',Lore:['{"text":"盾で突進！","color":"white","italic":false}','{"text":"全て破壊しつくせ！","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"大剣右クリで発動","color":"white","bold":true,"italic":false}]','[{"text":"\\uE010","color":"white","italic":false},{"text":"突進攻撃:","color":"white","bold":true,"italic":false},{"text":"5","color":"dark_green","bold":true,"italic":false}]','[{"text":"\\uE016","color":"white","italic":false},{"text":"スタン(鈍化)","color":"white","bold":true,"italic":false},{"text":"-100%","color":"dark_red","bold":true,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"前隙","color":"white","bold":false},{"text":"0:01","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"0:15","color":"dark_green","bold":false}]']}} 6
execute at @s run playsound block.bamboo_wood_button.click_on player @s
#発動者にタグを付ける
    tag @s add knight_special_switch
#敵をセット
    execute at @s positioned ^ ^ ^4 as @e[distance=..3.9,limit=3,tag=player] run tag @s add knight_special_target
    #居なかったら停止
    execute at @s positioned ^ ^ ^4 unless entity @e[distance=..3.9,limit=3,tag=player] at @s run playsound minecraft:block.note_block.bass player @a[distance=..5] ~ ~ ~ 2 2