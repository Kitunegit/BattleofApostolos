#> common_sytems:jobs/normal_attack/swing
#
# 単攻撃処理
#
# @internal

# 条件をクリアしてるかチェック
    execute if score @s system.combo.count >= @s system.combo.max run return 0
    execute if score @s system.attack.cool matches 1.. run return 0

# 役職に応じて処理を渡す

    execute if score @s jobscore matches 3 run function game_data:jobs/knight/normal_attack/allot

# タイマーセット、CTセット
    

# デバッグログ
    tellraw @s [{"score":{"name":"@s","objective":"system.combo.count"}},{"text":"段"}]


# 通常攻撃段数が上限に達していた時の処理
    execute if score @s system.combo.count >= @s system.combo.max run tellraw @s {"text":"---ComboConpleted---"}
    execute if score @s system.combo.count >= @s system.combo.max run execute at @s run playsound ui.button.click player @s ~ ~ ~ 1 1
    execute if score @s system.combo.count >= @s system.combo.max run scoreboard players set @s system.combo.count 0