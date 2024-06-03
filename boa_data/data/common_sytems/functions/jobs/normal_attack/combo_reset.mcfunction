#> common_sytems:jobs/normal_attack/combo_reset
#
# コンボを中断
#
# @internal

scoreboard players set @s system.combo.count 0
tellraw @s {"text":"---ComboReset---"}
execute at @s run playsound ui.button.click player @s ~ ~ ~ 1 1