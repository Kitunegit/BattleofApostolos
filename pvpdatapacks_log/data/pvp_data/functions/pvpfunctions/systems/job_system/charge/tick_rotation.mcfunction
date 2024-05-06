#> pvp_data:pvpfunctions/systems/job_system/charge/no_rotation
#
# チャージシステムの視点制御の常時実行処理
#
# @internal

# プレイヤーにタグをつける
    tag @s add Charge.Player
# 紐付けされてるマーカーを取得
    execute as @e[type=marker,tag=Charge.ViewPointSet] if score @s Charge.id = @a[tag=Charge.Player,limit=1,sort=nearest] Charge.id run tag @s add Charge.ViewPointSelector
# 紐付けされてるマーカーの方に視点を向ける
    execute at @s rotated as @e[tag=Charge.ViewPointSelector,limit=1,sort=nearest] run tp @s ~ ~ ~ facing ^ ^ ^10
# リセット
    tag @s remove Charge.Player
    tag @e[type=marker] remove Charge.ViewPointSelector