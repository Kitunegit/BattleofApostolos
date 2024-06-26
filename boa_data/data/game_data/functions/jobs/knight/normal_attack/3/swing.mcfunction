#> game_data:jobs/knight/normal_attack/3/swing
#
# 騎士_3段目攻撃処理
#
# @internal

# 演出
    playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 1 1.0
    playsound minecraft:block.dripstone_block.hit player @s ~ ~ ~ 2 0.5
# 斬撃演出
    execute at @s run summon text_display ~ ~1 ~ {brightness:{sky:15,block:15},transformation:{left_rotation:[0f,-0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[10f,10f,10f]},background:16711680,Tags:["system.particle","paritcle.knight","particle.knight.third","particle.Rot"]}
    execute at @s anchored eyes run tp @e[tag=particle.Rot] ~ ~2 ~ ~175 0
    tag @e[tag=particle.Rot] remove particle.Rot
    execute at @s run summon text_display ~ ~1 ~ {brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[10f,10f,10f]},background:16711680,Tags:["system.particle","paritcle.knight","particle.knight.third","particle.Rot"]}
    execute at @s anchored eyes run tp @e[tag=particle.Rot] ~ ~2 ~ ~185 0
    tag @e[tag=particle.Rot] remove particle.Rot
# CTセット
    scoreboard players add @s system.combo.count 1
    scoreboard players set @s system.combo.timer 20
    scoreboard players set @s system.attack.cool 2