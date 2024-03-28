#> pvp_data:pvpfunctions/jobs/wizard/attack/fire/black
#
# 魔導士黒魔法弾
#
# @internal

# 次までのCTをセット
    scoreboard players set @s special_cool 15
# 演出
    execute at @s run playsound minecraft:block.end_portal_frame.fill player @a[distance=..15] ~ ~ ~ 1 0.95
# 魔法陣を出して、向きを合わせる
    $execute at @s positioned ~ ~100.4 ~ run summon item_display $(pos) {item:{id:"minecraft:quartz",Count:1b,tag:{CustomModelData:2}},Tags:[MagicCircle],brightness:{sky:15,block:15}}
    execute at @s at @e[tag=MagicCircle,tag=!wizard.facing] positioned ~ ~-99 ~ rotated as @s as @e[tag=MagicCircle,tag=!wizard.facing] run tp @s ~ ~ ~ facing ^ ^ ^1
    tag @e[tag=!wizard.facing,tag=MagicCircle] add wizard.facing
# 弾を動かす
    execute as @e[tag=wizard_Normal_attack,type=marker] run function pvp_data:pvpfunctions/jobs/wizard/attack/move_black