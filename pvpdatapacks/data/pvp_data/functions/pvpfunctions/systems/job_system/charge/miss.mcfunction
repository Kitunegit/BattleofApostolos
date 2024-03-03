#> pvp_data:pvpfunctions/systems/job_system/charge/miss
#
# チャージ完了処理
#
# @internal

# 動けるようにする
    effect clear @s slowness
    effect clear @s jump_boost
# プレイヤーにタグ
    tag @s add Charge.Player
    tag @s add Charge.Miss
# 紐付けされてるマーカーをキル
    execute as @e[type=marker,tag=Charge.ViewPointSet] if score @s Charge.id = @a[tag=Charge.Player,limit=1,sort=nearest] Charge.id run kill @s
# リセット
    tag @s remove Charge.Player
    tag @s remove Charge.NoMove
    tag @s remove Charge.NoRotation
    tag @e[type=marker] remove Charge.ViewPointSelector
    scoreboard players reset @s Charge.Time

# デバッグ用
    say Charge Miss