#> common_sytems:jobs/normal_attack/tick
#
# 通常攻撃コンボに関する常時実行基礎処理
#
# @internal

# クールタイム減少
    execute as @a run scoreboard players remove @s[scores={system.attack.cool=1..}] system.attack.cool 1
    execute as @a run scoreboard players remove @s[scores={system.combo.timer=1..}] system.combo.timer 1

# 時間によるコンボ強制リセット
    execute as @a if score @s system.combo.timer matches 0 if score @s system.combo.count matches 1.. run function common_sytems:jobs/normal_attack/combo_reset

# 斬撃処理
    execute if entity @e[tag=system.particle,type=text_display] run function common_sytems:jobs/normal_attack/particle/blade/tick