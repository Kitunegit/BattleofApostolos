#> pvp_data:pvpfunctions/jobs/archer/ult/hit_detect
#
# ウルト中に敵に攻撃した時発火します
#
# @internal

# 実績解除
    advancement revoke @s only pvp_data:system/player_attack/archer_ult_arrow
    execute unless score @s ult_count matches 1.. if entity @e[tag=archer.ult_target] run return 0
# ターゲットにタグを付与
    tag @s add archer.ult_hit
# ターゲットを取得
    tag @e[nbt={HurtTime: 10s}, tag=!archer.ult_hit, tag=player] add archer.ult_target
    execute as @e[tag=archer.ult_target] on attacker unless entity @s[tag=archer.ult_hit] run tag @s remove archer.ult_target
# 演出
    execute at @s run playsound entity.lightning_bolt.thunder player @s ~ ~ ~ 1 2