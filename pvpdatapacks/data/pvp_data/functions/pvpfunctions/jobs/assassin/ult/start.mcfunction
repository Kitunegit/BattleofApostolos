item replace entity @s hotbar.3 with barrier{CustomModelData:63,display:{Name:'{"text":"クールタイム中です","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"暗殺者の究極の力","color":"white","italic":false}','{"text":"背後から一心不乱に突撃する。","color":"white","italic":false}','{"text":"─────発動条件─────","color":"gray","italic":false}','{"text":"敵の背後にいる時のみ発動可能","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"text":"突進攻撃:","color":"white","bold":true,"italic":false},{"text":"999","color":"dark_green","bold":true,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"必要詠唱時間","color":"white","bold":false},{"text":"0:05","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"2:00","color":"dark_green","bold":false}]']}} 1
scoreboard players set @s assassin_ult_charge 50
scoreboard players set @s ult_cool 32
scoreboard players set @s r_click 0
effect give @s weakness 2 10 true
effect give @s blindness 2 25 true
effect give @s slowness 2 20 true
effect give @s minecraft:jump_boost 2 150 true
execute at @s run summon marker ^ ^ ^50 {Tags:[assassin_ult_trgt]}