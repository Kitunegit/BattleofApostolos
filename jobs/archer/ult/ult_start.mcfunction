#発動演出
    execute at @s run playsound minecraft:item.trident.thunder player @a[distance=..10] ~ ~ ~ 0.7 1.5
#武器変更
    item replace entity @s hotbar.0 with crossbow{display:{Name:'{"text":"グラップルクロスボウ","color":"dark_purple","bold":true}'},HideFlags:1,CustomModelData:7,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;210445],FadeColors:[I;917269]}]}}},{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;275972],FadeColors:[I;1376028]}]}}}],Charged:1b} 1
#効果付与
    scoreboard players set @s archer_ult_time 200
#その他処理
    item replace entity @s hotbar.3 with barrier{display:{Name:'{"text":"クールタイム中です","color":"blue","bold":true,"italic":false}',Lore:['{"text":"大空へ羽ばたこう","color":"white","italic":true}','{"text":"まぁ落ちるけどネ…","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE013","color":"white","italic":false},{"text":"着弾付近へ引き寄せられる。","color":"white","bold":true,"italic":false},{"text":"(0:10)","color":"dark_green","bold":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"効果時間","color":"white","bold":false},{"text":" 0:10","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"2:00","color":"dark_green","bold":false}]']},CustomModelData:73}
    scoreboard players set @s ult_cool 60
    scoreboard players set @s r_click 0