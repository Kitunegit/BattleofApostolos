#> common_sytems:jobs/normal_attack/combo_reset
#
# コンボを中断
#
# @internal

# コンボ段数リセット
    scoreboard players set @s system.combo.count 0

# デバッグテキスト
    tellraw @s {"text":"---ComboReset---"}
# 仮演出音
    execute at @s run playsound ui.button.click player @s ~ ~ ~ 1 1