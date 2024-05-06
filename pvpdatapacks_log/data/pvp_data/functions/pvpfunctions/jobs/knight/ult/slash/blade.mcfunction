#> pvp_data:pvpfunctions/jobs/knight/ult/slash/blade
#
# 騎士斬撃常時実行
#
# @internal

# カウント
    scoreboard players add @s knight_ult_count 1
# ビジュアル
    execute at @s positioned ^ ^ ^ run particle sweep_attack ~ ~ ~ 0.5 0.5 0.5 3 5 force
    execute at @s positioned ^2 ^ ^-0.5 run particle sweep_attack ~ ~ ~ 0.5 0.5 0.5 3 5 force
    execute at @s positioned ^-2 ^ ^-0.5 run particle sweep_attack ~ ~ ~ 0.5 0.5 0.5 3 5 force
    execute at @s positioned ^4 ^ ^-1 run particle sweep_attack ~ ~ ~ 0.5 0.5 0.5 3 5 force
    execute at @s positioned ^-4 ^ ^-1 run particle sweep_attack ~ ~ ~ 0.5 0.5 0.5 3 5 force
    execute at @s positioned ^ ^ ^ run particle dust 0.145 0.957 0.957 1 ^ ^ ^-5 5 1 3 10 30 force
    # 音声
    execute at @s run playsound entity.player.attack.sweep player @a[distance=..15] ~ ~ ~ 1 1
# 攻撃判定
    execute if score @s knight_ult_count matches 1.. at @s positioned ^-3 ^ ^ as @e[distance=..2,tag=player] unless score @s knight_ult_count matches 1.. run tag @s add Knight.UltHit
    execute if score @s knight_ult_count matches 1.. at @s positioned ^ ^ ^ as @e[distance=..2,tag=player] unless score @s knight_ult_count matches 1.. run tag @s add Knight.UltHit
    execute if score @s knight_ult_count matches 1.. at @s positioned ^3 ^ ^ as @e[distance=..2,tag=player] unless score @s knight_ult_count matches 1.. run tag @s add Knight.UltHit
    execute if entity @e[tag=Knight.UltHit] as @a[tag=Knight_ult.Player] run function pvp_data:pvpfunctions/systems/job_system/damage/apply_fixed {damage: {amount: 20.0f,type: "pvp_data:knight/knight_ult"},knockback: {horizontal: 0d,vertical: 0d},target: "@e[tag=Knight.UltHit]"}
    execute if entity @e[tag=Knight.UltHit] run scoreboard players set @e[tag=Knight.UltHit] knight_ult_count 20
    tag @e[tag=Knight.UltHit] remove Knight.UltHit
# ワープ
    execute at @s run tp @s ^ ^ ^0.75
# 制限時間
    execute if score @s knight_ult_count matches 20.. run tag @e[tag=Knight_ult.Player] remove Knight_ult.Player
    kill @s[scores={knight_ult_count=20..}]