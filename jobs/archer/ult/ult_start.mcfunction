#発動演出
    execute at @s run playsound minecraft:item.trident.thunder player @a[distance=..10] ~ ~ ~ 0.7 1.5
#武器変更
    item replace entity @s hotbar.0 with crossbow{display:{Name:'{"text":"グラップルクロスボウ","color":"dark_purple","bold":true}'},HideFlags:1,CustomModelData:7,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;210445],FadeColors:[I;917269]}]}}},{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;275972],FadeColors:[I;1376028]}]}}}],Charged:1b} 1
#効果付与
    scoreboard players set @s archer_ult_time 200
#その他処理
    item replace entity @s hotbar.3 with barrier{CustomModelData:73}
    scoreboard players set @s ult_cool 60
    scoreboard players set @s r_click 0