#クロスボウ持たせる
    item replace entity @s hotbar.0 with crossbow{display:{Name:'{"text":"グラップルクロスボウ","color":"dark_purple","bold":true}'},HideFlags:1,CustomModelData:7,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:3b,Explosions:[{Type:4,Colors:[I;210445],FadeColors:[I;917269]}]}}},{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:3b,Explosions:[{Type:4,Colors:[I;275972],FadeColors:[I;1376028]}]}}}],Charged:1b} 1
#パーティクル
    execute rotated ~ 0 if entity @e[type=arrow] run particle dust 0.89 0.953 0.333 2 ^ ^1 ^-0.5 0.25 0.25 0.25 5 2
    execute rotated ~ 0 if entity @e[type=arrow] run particle dust 0.404 0.953 0.3333 2 ^ ^1 ^-0.5 0.25 0.25 0.25 5 2
    execute rotated ~ 0 if entity @e[type=arrow] run particle dust 0.09 0.553 0.031 2 ^ ^1 ^-0.5 0.25 0.25 0.25 5 2
#矢にライド
    execute at @s run ride @s mount @e[type=arrow,limit=1,tag=!ride_arrow]
#乗った矢にタグを付ける
    execute at @s run tag @e[type=arrow,limit=1] add ride_arrow
#乗ってる時に音声を流す
    execute at @s if entity @e[type=arrow,distance=..0.11] run playsound block.wood.place player @a ~ ~ ~ 1 2