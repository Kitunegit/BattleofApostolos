#> common_sytems:jobs/normal_attack/swing
#
# 単攻撃処理
#
# @internal

execute if score @s system.combo.count >= @s system.combo.max run return 0

execute if score @s system.attack.cool matches 1.. run return 0

scoreboard players add @s system.combo.count 1

scoreboard players set @s system.combo.timer 20

scoreboard players set @s system.attack.cool 5

tellraw @s [{"score":{"name":"@s","objective":"system.combo.count"}},{"text":"段"}]

playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 1 0.7

function plugin_api:knockback/vec2 {strength:0.4}
execute if score @s system.combo.count matches 5 run function plugin_api:knockback/vec2 {strength:0.4}

execute if score @s system.combo.count >= @s system.combo.max run tellraw @s {"text":"---ComboConpleted---"}
execute if score @s system.combo.count >= @s system.combo.max run execute at @s run playsound ui.button.click player @s ~ ~ ~ 1 1

execute if score @s system.combo.count >= @s system.combo.max run scoreboard players set @s system.combo.count 0