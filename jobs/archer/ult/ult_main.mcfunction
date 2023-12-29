#クロスボウ持たせる
    item replace entity @s hotbar.0 with crossbow{display:{Name:'{"text":"グラップルクロスボウ","color":"dark_purple","bold":true}'},HideFlags:1,CustomModelData:7,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:0.5b,Explosions:[{Type:4,Colors:[I;210445],FadeColors:[I;917269]}]}}},{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:0.5b,Explosions:[{Type:4,Colors:[I;275972],FadeColors:[I;1376028]}]}}}],Charged:1b} 1
#パーティクル
    execute at @e[type=arrow] run particle dust 0.89 0.953 0.333 1 ^ ^ ^ 0.25 0.25 0.25 5 1
    execute at @e[type=arrow] run particle dust 0.09 0.553 0.031 1 ^ ^ ^ 0.25 0.25 0.25 5 1
    execute at @e[type=firework_rocket] run particle dust 0.89 0.953 0.333 1 ^ ^ ^ 0.25 0.25 0.25 5 1
    execute at @e[type=firework_rocket] run particle dust 0.09 0.553 0.031 1 ^ ^ ^ 0.25 0.25 0.25 5 1